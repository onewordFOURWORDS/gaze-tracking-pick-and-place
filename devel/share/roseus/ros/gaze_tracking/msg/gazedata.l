;; Auto-generated. Do not edit!


(when (boundp 'gaze_tracking::gazedata)
  (if (not (find-package "GAZE_TRACKING"))
    (make-package "GAZE_TRACKING"))
  (shadow 'gazedata (find-package "GAZE_TRACKING")))
(unless (find-package "GAZE_TRACKING::GAZEDATA")
  (make-package "GAZE_TRACKING::GAZEDATA"))

(in-package "ROS")
;;//! \htmlinclude gazedata.msg.html


(defclass gaze_tracking::gazedata
  :super ros::object
  :slots (_POGX _POGY _POGV _POGD ))

(defmethod gaze_tracking::gazedata
  (:init
   (&key
    ((:POGX __POGX) 0.0)
    ((:POGY __POGY) 0.0)
    ((:POGV __POGV) 0.0)
    ((:POGD __POGD) 0.0)
    )
   (send-super :init)
   (setq _POGX (float __POGX))
   (setq _POGY (float __POGY))
   (setq _POGV (float __POGV))
   (setq _POGD (float __POGD))
   self)
  (:POGX
   (&optional __POGX)
   (if __POGX (setq _POGX __POGX)) _POGX)
  (:POGY
   (&optional __POGY)
   (if __POGY (setq _POGY __POGY)) _POGY)
  (:POGV
   (&optional __POGV)
   (if __POGV (setq _POGV __POGV)) _POGV)
  (:POGD
   (&optional __POGD)
   (if __POGD (setq _POGD __POGD)) _POGD)
  (:serialization-length
   ()
   (+
    ;; float32 _POGX
    4
    ;; float32 _POGY
    4
    ;; float32 _POGV
    4
    ;; float32 _POGD
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _POGX
       (sys::poke _POGX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _POGY
       (sys::poke _POGY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _POGV
       (sys::poke _POGV (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _POGD
       (sys::poke _POGD (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _POGX
     (setq _POGX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _POGY
     (setq _POGY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _POGV
     (setq _POGV (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _POGD
     (setq _POGD (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gaze_tracking::gazedata :md5sum-) "70030c120d5acadb46335a6d55bdf388")
(setf (get gaze_tracking::gazedata :datatype-) "gaze_tracking/gazedata")
(setf (get gaze_tracking::gazedata :definition-)
      "float32 POGX
float32 POGY
float32 POGV
float32 POGD

")



(provide :gaze_tracking/gazedata "70030c120d5acadb46335a6d55bdf388")


