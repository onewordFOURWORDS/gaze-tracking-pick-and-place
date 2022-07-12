;; Auto-generated. Do not edit!


(when (boundp 'Robotics_Report2::Blobs)
  (if (not (find-package "ROBOTICS_REPORT2"))
    (make-package "ROBOTICS_REPORT2"))
  (shadow 'Blobs (find-package "ROBOTICS_REPORT2")))
(unless (find-package "ROBOTICS_REPORT2::BLOBS")
  (make-package "ROBOTICS_REPORT2::BLOBS"))

(in-package "ROS")
;;//! \htmlinclude Blobs.msg.html


(defclass Robotics_Report2::Blobs
  :super ros::object
  :slots (_blob_list ))

(defmethod Robotics_Report2::Blobs
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
    ;; Robotics_Report2/Blob_Params[] _blob_list
    (apply #'+ (send-all _blob_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; Robotics_Report2/Blob_Params[] _blob_list
     (write-long (length _blob_list) s)
     (dolist (elem _blob_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; Robotics_Report2/Blob_Params[] _blob_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _blob_list (let (r) (dotimes (i n) (push (instance Robotics_Report2::Blob_Params :init) r)) r))
     (dolist (elem- _blob_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get Robotics_Report2::Blobs :md5sum-) "5544317ff6fcb345e7b3bfefa4c6bf5d")
(setf (get Robotics_Report2::Blobs :datatype-) "Robotics_Report2/Blobs")
(setf (get Robotics_Report2::Blobs :definition-)
      "Robotics_Report2/Blob_Params[] blob_list

================================================================================
MSG: Robotics_Report2/Blob_Params
int32 x_coord
int32 y_coord
int32 radius
int8 id

")



(provide :Robotics_Report2/Blobs "5544317ff6fcb345e7b3bfefa4c6bf5d")


