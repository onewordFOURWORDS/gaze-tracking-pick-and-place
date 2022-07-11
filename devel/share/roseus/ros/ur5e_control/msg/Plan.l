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
  :slots (_point ))

(defmethod ur5e_control::Plan
  (:init
   (&key
    ((:point __point) ())
    )
   (send-super :init)
   (setq _point __point)
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist[] _point
    (apply #'+ (send-all _point :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist[] _point
     (write-long (length _point) s)
     (dolist (elem _point)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist[] _point
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _point (let (r) (dotimes (i n) (push (instance geometry_msgs::Twist :init) r)) r))
     (dolist (elem- _point)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ur5e_control::Plan :md5sum-) "294113bb7631d82f82b9aeb128d287f2")
(setf (get ur5e_control::Plan :datatype-) "ur5e_control/Plan")
(setf (get ur5e_control::Plan :definition-)
      "geometry_msgs/Twist[] point

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



(provide :ur5e_control/Plan "294113bb7631d82f82b9aeb128d287f2")


