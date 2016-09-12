
(cl:in-package :asdf)

(defsystem "vehicle_base-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "VehicleBaseRes" :depends-on ("_package_VehicleBaseRes"))
    (:file "_package_VehicleBaseRes" :depends-on ("_package"))
    (:file "VehicleBaseCmd" :depends-on ("_package_VehicleBaseCmd"))
    (:file "_package_VehicleBaseCmd" :depends-on ("_package"))
  ))