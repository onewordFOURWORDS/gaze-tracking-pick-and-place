;; Auto-generated. Do not edit!


(when (boundp 'gaze_tracking::Blobs)
  (if (not (find-package "GAZE_TRACKING"))
    (make-package "GAZE_TRACKING"))
  (shadow 'Blobs (find-package "GAZE_TRACKING")))
(unless (find-package "GAZE_TRACKING::BLOBS")
  (make-package "GAZE_TRACKING::BLOBS"))

(in-package "ROS")
;;//! \htmlinclude Blobs.msg.html


(defclass gaze_tracking::Blobs
  :super ros::object
  :slots (_blob_list ))

(defmethod gaze_tracking::Blobs
  (:init
   (&key
    ((:blob_list __blob_list) ())
    )
   (send-super :init)
   (setq _blob_list __blob_list)
   self)
  (:blob_list
   (&rest __blob_list)
   (if (keywordp (car __blob_list))
       (send* _blob_list __blob_list)
     (progn
       (if __blob_list (setq _blob_list (car __blob_list)))
       _blob_list)))
  (:serialization-length
   ()
   (+
    ;; gaze_tracking/Blob_Params[] _blob_list
    (apply #'+ (send-all _blob_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gaze_tracking/Blob_Params[] _blob_list
     (write-long (length _blob_list) s)
     (dolist (elem _blob_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gaze_tracking/Blob_Params[] _blob_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _blob_list (let (r) (dotimes (i n) (push (instance gaze_tracking::Blob_Params :init) r)) r))
     (dolist (elem- _blob_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get gaze_tracking::Blobs :md5sum-) "5544317ff6fcb345e7b3bfefa4c6bf5d")
(setf (get gaze_tracking::Blobs :datatype-) "gaze_tracking/Blobs")
(setf (get gaze_tracking::Blobs :definition-)
      "gaze_tracking/Blob_Params[] blob_list

================================================================================
MSG: gaze_tracking/Blob_Params
int32 x_coord
int32 y_coord
int32 radius
int8 id

")



(provide :gaze_tracking/Blobs "5544317ff6fcb345e7b3bfefa4c6bf5d")


