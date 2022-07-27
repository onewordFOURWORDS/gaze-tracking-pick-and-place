;; Auto-generated. Do not edit!


(when (boundp 'ur5e_control::Plan)
  (if (not (find-package "UR5E_CONTROL"))
    (make-package "UR5E_CONTROL"))
  (shadow 'Plan (find-package "UR5E_CONTROL")))
(unless (find-package "UR5E_CONTROL::PLAN")
  (make-package "UR5E_CONTROL::PLAN"))

(in-package "ROS")
;;//! \htmlinclude Plan.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ur5e_control::Plan
  :super ros::object
  :slots (_points _modes ))

(defmethod ur5e_control::Plan
  (:init
   (&key
    ((:points __points) ())
    ((:modes __modes) ())
    )
   (send-super :init)
   (setq _points __points)
   (setq _modes __modes)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:modes
   (&rest __modes)
   (if (keywordp (car __modes))
       (send* _modes __modes)
     (progn
       (if __modes (setq _modes (car __modes)))
       _modes)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; std_msgs/UInt8[] _modes
    (apply #'+ (send-all _modes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; std_msgs/UInt8[] _modes
     (write-long (length _modes) s)
     (dolist (elem _modes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Twist :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/UInt8[] _modes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _modes (let (r) (dotimes (i n) (push (instance std_msgs::UInt8 :init) r)) r))
     (dolist (elem- _modes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ur5e_control::Plan :md5sum-) "043039bf6ff80e5c7934062c274c6649")
(setf (get ur5e_control::Plan :datatype-) "ur5e_control/Plan")
(setf (get ur5e_control::Plan :definition-)
      "geometry_msgs/Twist[] points
std_msgs/UInt8[] modes

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: std_msgs/UInt8
uint8 data

")



(provide :ur5e_control/Plan "043039bf6ff80e5c7934062c274c6649")


