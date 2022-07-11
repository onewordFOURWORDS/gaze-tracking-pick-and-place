
(cl:in-package :asdf)

(defsystem "robot_vision_lectures-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "SphereParams" :depends-on ("_package_SphereParams"))
    (:file "_package_SphereParams" :depends-on ("_package"))
    (:file "XYZarray" :depends-on ("_package_XYZarray"))
    (:file "_package_XYZarray" :depends-on ("_package"))
  ))