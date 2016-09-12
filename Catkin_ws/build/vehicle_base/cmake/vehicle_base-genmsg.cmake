# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vehicle_base: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ivehicle_base:/home/jeff/RTB/Catkin_ws/src/vehicle_base/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vehicle_base_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jeff/RTB/Catkin_ws/src/vehicle_base/msg/VehicleBaseRes.msg" NAME_WE)
add_custom_target(_vehicle_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vehicle_base" "/home/jeff/RTB/Catkin_ws/src/vehicle_base/msg/VehicleBaseRes.msg" ""
)

get_filename_component(_filename "/home/jeff/RTB/Catkin_ws/src/vehicle_base/msg/VehicleBaseCmd.msg" NAME_WE)
add_custom_target(_vehicle_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vehicle_base" "/home/jeff/RTB/Catkin_ws/src/vehicle_base/msg/VehicleBaseCmd.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vehicle_base
  "/home/jeff/RTB/Catkin_ws/src/vehicle_base/msg/VehicleBaseRes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vehicle_base
)
_generate_msg_cpp(vehicle_base
  "/home/jeff/RTB/Catkin_ws/src/vehicle_base/msg/VehicleBaseCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vehicle_base
)

### Generating Services

### Generating Module File
_generate_module_cpp(vehicle_base
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vehicle_base
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vehicle_base_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vehicle_base_generate_messages vehicle_base_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jeff/RTB/Catkin_ws/src/vehicle_base/msg/VehicleBaseRes.msg" NAME_WE)
add_dependencies(vehicle_base_generate_messages_cpp _vehicle_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jeff/RTB/Catkin_ws/src/vehicle_base/msg/VehicleBaseCmd.msg" NAME_WE)
add_dependencies(vehicle_base_generate_messages_cpp _vehicle_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vehicle_base_gencpp)
add_dependencies(vehicle_base_gencpp vehicle_base_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vehicle_base_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vehicle_base
  "/home/jeff/RTB/Catkin_ws/src/vehicle_base/msg/VehicleBaseRes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vehicle_base
)
_generate_msg_lisp(vehicle_base
  "/home/jeff/RTB/Catkin_ws/src/vehicle_base/msg/VehicleBaseCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vehicle_base
)

### Generating Services

### Generating Module File
_generate_module_lisp(vehicle_base
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vehicle_base
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vehicle_base_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vehicle_base_generate_messages vehicle_base_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jeff/RTB/Catkin_ws/src/vehicle_base/msg/VehicleBaseRes.msg" NAME_WE)
add_dependencies(vehicle_base_generate_messages_lisp _vehicle_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jeff/RTB/Catkin_ws/src/vehicle_base/msg/VehicleBaseCmd.msg" NAME_WE)
add_dependencies(vehicle_base_generate_messages_lisp _vehicle_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vehicle_base_genlisp)
add_dependencies(vehicle_base_genlisp vehicle_base_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vehicle_base_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vehicle_base
  "/home/jeff/RTB/Catkin_ws/src/vehicle_base/msg/VehicleBaseRes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vehicle_base
)
_generate_msg_py(vehicle_base
  "/home/jeff/RTB/Catkin_ws/src/vehicle_base/msg/VehicleBaseCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vehicle_base
)

### Generating Services

### Generating Module File
_generate_module_py(vehicle_base
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vehicle_base
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vehicle_base_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vehicle_base_generate_messages vehicle_base_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jeff/RTB/Catkin_ws/src/vehicle_base/msg/VehicleBaseRes.msg" NAME_WE)
add_dependencies(vehicle_base_generate_messages_py _vehicle_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jeff/RTB/Catkin_ws/src/vehicle_base/msg/VehicleBaseCmd.msg" NAME_WE)
add_dependencies(vehicle_base_generate_messages_py _vehicle_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vehicle_base_genpy)
add_dependencies(vehicle_base_genpy vehicle_base_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vehicle_base_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vehicle_base)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vehicle_base
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(vehicle_base_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(vehicle_base_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vehicle_base)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vehicle_base
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(vehicle_base_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(vehicle_base_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vehicle_base)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vehicle_base\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vehicle_base
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(vehicle_base_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(vehicle_base_generate_messages_py geometry_msgs_generate_messages_py)
