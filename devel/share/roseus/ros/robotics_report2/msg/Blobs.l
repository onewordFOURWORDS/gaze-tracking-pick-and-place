;; Auto-generated. Do not edit!


(when (boundp 'robotics_report2::Blobs)
  (if (not (find-package "ROBOTICS_REPORT2"))
    (make-package "ROBOTICS_REPORT2"))
  (shadow 'Blobs (find-package "ROBOTICS_REPORT2")))
(unless (find-package "ROBOTICS_REPORT2::BLOBS")
  (make-package "ROBOTICS_REPORT2::BLOBS"))

(in-package "ROS")
;;//! \htmlinclude Blobs.msg.html


(defclass robotics_report2::Blobs
  :super ros::object
  :slots (_blob_list ))

(defmethod robotics_report2::Blobs
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
    ;; robotics_report2/Blob_Params[] _blob_list
    (apply #'+ (send-all _blob_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotics_report2/Blob_Params[] _blob_list
     (write-long (length _blob_list) s)
     (dolist (elem _blob_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotics_report2/Blob_Params[] _blob_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _blob_list (let (r) (dotimes (i n) (push (instance robotics_report2::Blob_Params :init) r)) r))
     (dolist (elem- _blob_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robotics_report2::Blobs :md5sum-) "e2836b3623ac455b4a432ee2fdf4d41d")
(setf (get robotics_report2::Blobs :datatype-) "robotics_report2/Blobs")
(setf (get robotics_report2::Blobs :definition-)
      "robotics_report2/Blob_Params[] blob_list

================================================================================
MSG: robotics_report2/Blob_Params
int8 x_coord
int8 y_coord
int8 radius

")



(provide :robotics_report2/Blobs "e2836b3623ac455b4a432ee2fdf4d41d")


