/***************************************************
* Module name: Vehicle_Base_Communication.cpp
*
* Copyright 2016 MFS as an unpublished work.
* All Rights Reserved.
*
* The information contained herein is confidential
* property of MFS. The user, copying, transfer or
* disclosure of such information is prohibited except
* by express written agreement with MFS.
*
* First written on 30/08/2016 by Jeff.
*
* Module Description:
* Listening the topic:vehicle_command, interpret the command, convert to the vehicle command format, and send to vehicle.
* Receiving the response data from the vehicle through TCP protocol, interpret and convert the response.
* Publish the response to the topic:vehicle_response.
* The node is capable of reconnecting the vehicle when the connection is lost.
* When the connection is lost, the node would try to reconnect the vehicle every 4 seconds.
*
***************************************************/

/*  Include section
* Add all #includes here
*
***************************************************/

#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>

#include <vehicle_base/VehicleBaseCmd.h>
#include <vehicle_base/VehicleBaseRes.h>

#include <iostream>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <pthread.h>
#include <math.h>
#include <time.h>

using namespace std;

struct VehicleBaseCmdSt
{
	uint16_t Head;
	uint16_t RunningNumber;

	uint16_t MotorPowerCtrl;
	uint16_t SpeedMode;
	uint16_t SteeringAngle;
	uint16_t ThrottleValue;
	uint16_t LMBrakeValue;
	uint16_t RMBrakeValue;

	uint16_t End;
};

struct VehicleBaseResSt
{
	uint16_t Head;
	uint16_t RunningNumber;

	uint16_t IW0;
	uint16_t QW0;
	uint16_t QW8;
	uint16_t IW64;
	uint16_t IW66;
	uint16_t IW112;
	uint16_t IW114;
	uint16_t IW116;
	uint16_t IW118;
	uint16_t QW116;
	uint16_t QW118;

	int16_t LeftMotorSpeed;
	int16_t LeftMotorRPM;
	int16_t LeftMotorCurrent;
	uint16_t LeftMotorVoltage;
	int16_t LeftMotorTemp;
	int16_t LeftMotorTorque;
	uint16_t LeftMotorOdometer0;
	uint16_t LeftMotorOdometer1;

	int16_t RightMotorSpeed;
	int16_t RightMotorRPM;
	int16_t RightMotorCurrent;
	uint16_t RightMotorVoltage;
	int16_t RightMotorTemp;
	int16_t RightMotorTorque;
	uint16_t RightMotorOdometer0;
	uint16_t RightMotorOdometer1;

	uint16_t BatteryVoltage;
	int16_t BatteryCurrent;
	uint16_t BatteryCapacity;
	int16_t BatteryAmpHours;
	uint16_t BatteryAuxVoltage;
	uint16_t BatteryRemaining;
	uint16_t BatteryStatus0;
	uint16_t BatteryStatus;
	uint16_t BatteryTemperature;

	int16_t CurrentLatitude0;
	int16_t CurrentLatitude1;
	int16_t CurrentLongitude0;
	int16_t CurrentLongitude1;
	int16_t CompassRoll;
	int16_t CompassPitch;
	int16_t CompassYaw;

	uint16_t RCConnectedTime;
	uint16_t ROSConnectedTime;

	uint16_t RCSpeedMode;
	uint16_t RCSteeringAngle;
	uint16_t RCLMBrakeValue;
	uint16_t RCMotorPowerCtrl;
	uint16_t RCThrottleValue;
	uint16_t RCRMBrakeValue;
	uint16_t RCRoboticArmPower;
	uint16_t RCNavigationCmd;

	int16_t DestinationLatitude0;
	int16_t DestinationLatitude1;
	int16_t DestinationLongitude0;
	int16_t DestinationLongitude1;

	uint16_t End;
};

const char DefaultHost[] = "192.168.127.10";
const int DefaultPort = 2002;
const float DefaultGearboxRatio = 30;
const float DefaultGirthofTyre = 1.8;

const int PackageHead = 0x55AA;
const int PackageEnd = 0xAA55;
const int CommandON = 0x8001;
const int CommandOFF = 0x8000;
const uint16_t NeutralAnalogValue = 6912;
const uint16_t MaxAnalogValue = 13824;
// TODO: Speed limit when rotate, measure with the actual situation.
const float MinRotateThrottle = 0.6;
const uint16_t BrakeON = 0x8064;
const uint16_t BrakeOFF = 0x8000;
const uint16_t HighSpeedMode = CommandOFF;
const uint16_t LowSpeedMode = CommandON;
const string ResponseFrameID = "vehicle_response";

float GearboxRatio;
float GirthofTyre;
bool GotConnected = false;
int  socketHandle;
int16_t CmdRunningNum = 0;
uint32_t ResponseSeq = 0;

struct sockaddr_in VehicleSocketInfo;
ros::Publisher VehicleResponse_pub;

void *TCP_Client_function(void* msg);
void SwapPackage(uint16_t* pt, uint16_t size);
vehicle_base::VehicleBaseRes ConvertResponse(VehicleBaseResSt res);
void SendCommand(int handle, const vehicle_base::VehicleBaseCmd & msg);

void *Connection_Maintain_function(void* msg)
{
	ros::NodeHandle n;

	VehicleResponse_pub = n.advertise<vehicle_base::VehicleBaseRes>("vehicle_response", 10);

	//ROS_INFO("Vehicle_base: TCP thread is running.");

	// Read the parameter from the launch file
	char hostname[20];
	std::string temphostname;
	if(n.getParam("vehicleaddress", temphostname))
	{
		memcpy(hostname, temphostname.c_str(), temphostname.size());
	}
	else
	{
		memcpy(hostname, DefaultHost, sizeof(DefaultHost));
	}

	int portnumber = 0;
	if(n.getParam("vehicleport", portnumber) == false)
	{
		portnumber = DefaultPort;
	}

	if(n.getParam("gearboxratio", GearboxRatio) == false)
	{
		GearboxRatio = DefaultGearboxRatio;
	}

	if(n.getParam("circumferenceoftyre", GirthofTyre) == false)
	{
		GirthofTyre = DefaultGirthofTyre;
	}

	ROS_INFO("Vehicle_base: Vehicle Address: %s:%d", hostname, portnumber);
	ROS_INFO("Vehicle_base: Gear box Ratio: %f", GearboxRatio);
	ROS_INFO("Vehicle_base: Circumference of Tyre: %f m", GirthofTyre);

	// Clear structure memory
	bzero(&VehicleSocketInfo, sizeof(sockaddr_in));
	// Load system information into socket data structures
	inet_aton(hostname, &(VehicleSocketInfo.sin_addr));
	VehicleSocketInfo.sin_family = AF_INET;
	// Set port number
	VehicleSocketInfo.sin_port = htons((u_short)portnumber);

	while(1)
	{
		pthread_t threadTCPClient;

		if(!GotConnected)
		{
			//ROS_INFO("Vehicle_base: Create TCP client thread.");

			int rc1;
			if ((rc1 = pthread_create(&threadTCPClient, NULL, &TCP_Client_function, NULL)))
			{
				ROS_INFO("Vehicle_base: Connection thread creation failed: %d", rc1);
			}

			// Delay 3 seconds to connect the vehicle
			sleep(3);

			// If the connection is lost, try to reconnect the vehicle
			if(!GotConnected)
			{
				pthread_cancel(threadTCPClient);

				sleep(1);

				//ROS_INFO("Vehicle_base: Cancel TCP client thread.");
			}
		}
		else
		{
			sleep(1);
		}
	}
}
void *TCP_Client_function(void* msg)
{
	// create socket
	if ((socketHandle = socket(AF_INET, SOCK_STREAM, 0)) < 0)
	{
		ROS_INFO("Vehicle_base: %s", "failed to create handle");

		close(socketHandle);
		pthread_exit(NULL);
	}

	ROS_INFO("Vehicle_base: %s", "connecting");

	if (connect(socketHandle, (struct sockaddr *)&VehicleSocketInfo, sizeof(sockaddr_in)) < 0)
	{
		ROS_INFO("Vehicle_base: %s", "failed to connect");

		close(socketHandle);

		pthread_exit(NULL);
	}
	else
	{
		ROS_INFO("Vehicle_base: %s", "connected");

		GotConnected = true;
	}

	while (1)
	{
		// Keep connecting the server
		if (GotConnected)
		{
			int rc = 0;
			char recvbuf[sizeof(VehicleBaseResSt)];
			rc = recv(socketHandle, recvbuf, sizeof(recvbuf), 0);
			if (rc == 0)
			{
				GotConnected = false;
				close(socketHandle);

				ROS_INFO("Vehicle_base: %s", "Socket closed");
			}
			else if (rc == -1)
			{
				GotConnected = false;
				close(socketHandle);

				ROS_INFO("Vehicle_base: %s", "Socket error");
			}
			else
			{
				//Swap the whole package, different endian
				SwapPackage((uint16_t*)&recvbuf, sizeof(VehicleBaseResSt));
				VehicleBaseResSt response;
				memcpy(&response, recvbuf, sizeof(response));
				// Check the validation of the package
				if((rc == sizeof(VehicleBaseResSt)) && (response.Head == PackageHead) && (response.End  == PackageEnd))
				{
					vehicle_base::VehicleBaseRes msg;
					// Convert
					msg = ConvertResponse(response);
					// Publish
					VehicleResponse_pub.publish(msg);

					//ROS_INFO("Vehicle_base: %s", "Publish response");

					ros::spinOnce();
				}
				else
				{
					ROS_INFO("Vehicle_base: %s  %d ", "Invalid response", rc);
				}

				usleep(50);
			}
		}
		else
		{
			sleep(1);
		}
	}
}

vehicle_base::VehicleBaseRes ConvertResponse(VehicleBaseResSt res)
{
	vehicle_base::VehicleBaseRes msg;

	msg.Seq = ResponseSeq++;
	msg.Frame_ID =  ResponseFrameID;
	msg.Stamp = ros::Time::now();

	// Battery parameter
	msg.BatteryVoltage = (float)res.BatteryVoltage/100.0;
	msg.BatteryCurrent = (float)res.BatteryCurrent/100.0;
	msg.BatteryCapacity = (float)res.BatteryCapacity/1000.0;
	msg.BatteryRemaining = (float)res.BatteryRemaining/60.0;
	msg.BatteryTemperature = (float)res.BatteryTemperature/10.0;
	// Left Motor parameter
	msg.LeftMotorCurrent = (float)res.LeftMotorCurrent;
	msg.LeftMotorSpeed = 0;
	msg.LeftMotorTemp = (float)res.LeftMotorTemp;
	msg.LeftMotorTorque = (float)res.LeftMotorTorque/10.0;
	msg.LeftMotorOdometer = (float)(res.LeftMotorOdometer0 + res.LeftMotorOdometer1*65536)/10.0;
	msg.LeftMotorSpeed = (float)(60*GirthofTyre*res.LeftMotorRPM)/GearboxRatio/1000.0;
	// Right Motor parameter
	msg.RightMotorCurrent = (float)res.RightMotorCurrent;
	msg.RightMotorSpeed = 0;
	msg.RightMotorTemp = (float)res.RightMotorTemp;
	msg.RightMotorTorque = (float)res.RightMotorTorque/10.0;
	msg.RightMotorOdometer = (float)(res.RightMotorOdometer0 + res.RightMotorOdometer1*65536)/10.0;
	msg.RightMotorSpeed = (float)(60*GirthofTyre*res.RightMotorRPM)/GearboxRatio/1000.0;
	// Sensors
	msg.CurrentLatitude = (float)(res.CurrentLatitude0 + res.CurrentLatitude1*65536)/1000000.0;
	msg.CurrentLongitude = (float)(res.CurrentLongitude0 + res.CurrentLongitude1*65536)/1000000.0;
	msg.CompassRoll = (float)res.CompassRoll/100.0;
	msg.CompassPitch = (float)res.CompassPitch/100.0;
	msg.CompassYaw = (float)res.CompassYaw/100.0;
	// Navigation parameter
	msg.RCNavigationCmd = res.RCNavigationCmd;
	msg.DestinationLatitude = (float)(res.DestinationLatitude0 + res.DestinationLatitude1*65536)/1000000.0;
	msg.DestinationLongitude = (float)(res.DestinationLongitude0 + res.DestinationLongitude1*65536)/1000000.0;
	// Remote controller command
	if(res.RCLMBrakeValue == BrakeON)
	{
		msg.RCLeftBrake = 1;
	}
	else
	{
		msg.RCLeftBrake = 0;
	}
	if(res.RCRMBrakeValue == BrakeON)
	{
		msg.RCRightBrake = 1;
	}
	else
	{
		msg.RCRightBrake = 0;
	}
	if(res.RCSpeedMode == HighSpeedMode)
	{
		msg.RCSpeedMode = 1;
	}
	else
	{
		msg.RCSpeedMode = 0;
	}
	if(res.RCRoboticArmPower == CommandON)
	{
		msg.RCRoboticArmPwr = 1;
	}
	else
	{
		msg.RCRoboticArmPwr = 0;
	}
	if(res.RCMotorPowerCtrl == CommandON)
	{
		msg.RCMotorPower = 1;
		msg.RCThrottle = ((float)(res.RCThrottleValue - NeutralAnalogValue))/(float)NeutralAnalogValue;
		msg.RCSteeringAngle = ((float)(res.RCSteeringAngle - NeutralAnalogValue))/(float)NeutralAnalogValue;
	}
	else
	{
		msg.RCMotorPower = 0;
		msg.RCThrottle = 0;
		msg.RCSteeringAngle = 0;
	}

	return msg;
}

void SwapPackage(uint16_t* pt, uint16_t size)
{
	int i;
	uint16_t swaptemp;

	for(i = 0; i < size/2; i ++)
	{
		swaptemp = pt[i];
		swaptemp = ((swaptemp & 0x00FF) << 8) | ((swaptemp & 0xFF00) >> 8);
		pt[i] = swaptemp;
	}
}

void SendCMDCallback(const vehicle_base::VehicleBaseCmd & msg)
{
	if(GotConnected)
	{
		SendCommand(socketHandle, msg);
	}

	//ROS_INFO("Vehicle_base: sequence of the command: %d", msg.seq);
}

void SendCommand(int handle, const vehicle_base::VehicleBaseCmd & msg)
{
	VehicleBaseCmdSt cmd;
	uint8_t array[sizeof(VehicleBaseCmdSt)];

	cmd.Head = PackageHead;
	cmd.RunningNumber = CmdRunningNum++;

	// Motor power control
	cmd.MotorPowerCtrl = CommandON;
	// Left brake control
	if(msg.LeftBrake > 0)
	{
		cmd.LMBrakeValue = BrakeON;
	}
	else
	{
		cmd.LMBrakeValue = BrakeOFF;
	}
	// Right brake control
	if(msg.RightBrake > 0)
	{
		cmd.RMBrakeValue = BrakeON;
	}
	else
	{
		cmd.RMBrakeValue = BrakeOFF;
	}
	// Speed mode control
	if(msg.SpeedMode > 0)
	{
		cmd.SpeedMode = HighSpeedMode;
	}
	else
	{
		cmd.SpeedMode = LowSpeedMode;
	}
	// Throttle
	float throttle = msg.Throttle;
	if(throttle > 1)
	{
		throttle = 1;
	}
	if(throttle < -1)
	{
		throttle = -1;
	}
	cmd.ThrottleValue = (uint16_t)(NeutralAnalogValue*(1 + throttle));
	// Steering angle
	float steeringangle = msg.SteeringAngle;
	if(steeringangle > 1)
	{
		steeringangle = 1;
	}
	if(steeringangle < -1)
	{
		steeringangle = -1;
	}
	// Set to lowspeed mode if the steering angle is bigger than 45 degree
	if(fabs(steeringangle) > 0.5)
	{
		cmd.SpeedMode = LowSpeedMode;
		// Set the steering angle to 90 or -90 degree.
		if(steeringangle > 0)
		{
			cmd.SteeringAngle = MaxAnalogValue;
			// TODO: Speed limit when rotate, measure with the actual situation.
			cmd.ThrottleValue = (uint16_t)(NeutralAnalogValue*(1 + MinRotateThrottle));
		}
		else
		{
			cmd.SteeringAngle = 0;
			// TODO: Speed limit when rotate, measure with the actual situation.
			cmd.ThrottleValue = (uint16_t)(NeutralAnalogValue*(1 + MinRotateThrottle));
		}
	}
	else
	{
		cmd.SteeringAngle = (uint16_t)(NeutralAnalogValue*(1 + steeringangle));
	}

	cmd.End = PackageEnd;

	memcpy(array, (uint8_t*)&cmd, sizeof(VehicleBaseCmdSt));
	//Swap the whole package, different endian
	SwapPackage((uint16_t*)&array, sizeof(VehicleBaseCmdSt));

	send(handle, array, sizeof(VehicleBaseCmdSt), 0);
}
int main(int argc, char **argv)
{
	ros::init(argc, argv, "Vehicle_Base_Communication");

	ros::NodeHandle n;

	ros::Subscriber sub = n.subscribe("vehicle_command", 10, SendCMDCallback);

	ROS_INFO("Vehicle_Base_Communication: %s", "Start");

	pthread_t threadConnection;
	int rc1;
	if ((rc1 = pthread_create(&threadConnection, NULL, &Connection_Maintain_function, NULL)))
	{
		ROS_INFO("Vehicle_base: Connection thread creation failed: %d", rc1);
	}

	ros::spin();

	// ctrl + c to terminate the thread
	pthread_cancel(threadConnection);

	return 0;
}
