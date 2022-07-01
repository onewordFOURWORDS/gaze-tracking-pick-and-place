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


(defclass ur5e_control::Plan
  :super ros::object
  :slots (_points ))

(defmethod ur5e_control::Plan
  (:init
   (&key
    ((:points __points) ())
    )
   (send-super :init)
   (setq _points __points)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
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
   ;;
   self)
  )

(setf (get ur5e_control::Plan :md5sum-) "392956a1af22c9b8eaac7e07bb3eb9f0")
(setf (get ur5e_control::Plan :datatype-) "ur5e_control/Plan")
(setf (get ur5e_control::Plan :definition-)
      "geometry_msgs/Twist[] points

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
")



(provide :ur5e_control/Plan "392956a1af22c9b8eaac7e07bb3eb9f0")


