;; Auto-generated. Do not edit!


(when (boundp 'robot_vision_lectures::SphereParams)
  (if (not (find-package "ROBOT_VISION_LECTURES"))
    (make-package "ROBOT_VISION_LECTURES"))
  (shadow 'SphereParams (find-package "ROBOT_VISION_LECTURES")))
(unless (find-package "ROBOT_VISION_LECTURES::SPHEREPARAMS")
  (make-package "ROBOT_VISION_LECTURES::SPHEREPARAMS"))

(in-package "ROS")
;;//! \htmlinclude SphereParams.msg.html


(defclass robot_vision_lectures::SphereParams
  :super ros::object
  :slots (_xc _yc _zc _radius ))

(defmethod robot_vision_lectures::SphereParams
  (:init
   (&key
    ((:xc __xc) 0.0)
    ((:yc __yc) 0.0)
    ((:zc __zc) 0.0)
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _xc (float __xc))
   (setq _yc (float __yc))
   (setq _zc (float __zc))
   (setq _radius (float __radius))
   self)
  (:xc
   (&optional __xc)
   (if __xc (setq _xc __xc)) _xc)
  (:yc
   (&optional __yc)
   (if __yc (setq _yc __yc)) _yc)
  (:zc
   (&optional __zc)
   (if __zc (setq _zc __zc)) _zc)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; float32 _xc
    4
    ;; float32 _yc
    4
    ;; float32 _zc
    4
    ;; float32 _radius
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _xc
       (sys::poke _xc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yc
       (sys::poke _yc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zc
       (sys::poke _zc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _xc
     (setq _xc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yc
     (setq _yc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zc
     (setq _zc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_vision_lectures::SphereParams :md5sum-) "e8b9db43e9aaaab48ea455f0546fdec2")
(setf (get robot_vision_lectures::SphereParams :datatype-) "robot_vision_lectures/SphereParams")
(setf (get robot_vision_lectures::SphereParams :definition-)
      "float32 xc
float32 yc
float32 zc
float32 radius

")



(provide :robot_vision_lectures/SphereParams "e8b9db43e9aaaab48ea455f0546fdec2")


