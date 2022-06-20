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
  :slots (_BPOGX _BPOGY _BPOGV ))

(defmethod gaze_tracking::gazedata
  (:init
   (&key
    ((:BPOGX __BPOGX) 0.0)
    ((:BPOGY __BPOGY) 0.0)
    ((:BPOGV __BPOGV) 0.0)
    )
   (send-super :init)
   (setq _BPOGX (float __BPOGX))
   (setq _BPOGY (float __BPOGY))
   (setq _BPOGV (float __BPOGV))
   self)
  (:BPOGX
   (&optional __BPOGX)
   (if __BPOGX (setq _BPOGX __BPOGX)) _BPOGX)
  (:BPOGY
   (&optional __BPOGY)
   (if __BPOGY (setq _BPOGY __BPOGY)) _BPOGY)
  (:BPOGV
   (&optional __BPOGV)
   (if __BPOGV (setq _BPOGV __BPOGV)) _BPOGV)
  (:serialization-length
   ()
   (+
    ;; float32 _BPOGX
    4
    ;; float32 _BPOGY
    4
    ;; float32 _BPOGV
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _BPOGX
       (sys::poke _BPOGX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _BPOGY
       (sys::poke _BPOGY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _BPOGV
       (sys::poke _BPOGV (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _BPOGX
     (setq _BPOGX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _BPOGY
     (setq _BPOGY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _BPOGV
     (setq _BPOGV (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gaze_tracking::gazedata :md5sum-) "c468a841b881d4bc2e7c92a6284034c6")
(setf (get gaze_tracking::gazedata :datatype-) "gaze_tracking/gazedata")
(setf (get gaze_tracking::gazedata :definition-)
      "float32 BPOGX
float32 BPOGY
float32 BPOGV

")



(provide :gaze_tracking/gazedata "c468a841b881d4bc2e7c92a6284034c6")


