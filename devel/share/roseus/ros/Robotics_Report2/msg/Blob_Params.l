;; Auto-generated. Do not edit!


(when (boundp 'Robotics_Report2::Blob_Params)
  (if (not (find-package "ROBOTICS_REPORT2"))
    (make-package "ROBOTICS_REPORT2"))
  (shadow 'Blob_Params (find-package "ROBOTICS_REPORT2")))
(unless (find-package "ROBOTICS_REPORT2::BLOB_PARAMS")
  (make-package "ROBOTICS_REPORT2::BLOB_PARAMS"))

(in-package "ROS")
;;//! \htmlinclude Blob_Params.msg.html


(defclass Robotics_Report2::Blob_Params
  :super ros::object
  :slots (_x_coord _y_coord _radius _id ))

(defmethod Robotics_Report2::Blob_Params
  (:init
   (&key
    ((:x_coord __x_coord) 0)
    ((:y_coord __y_coord) 0)
    ((:radius __radius) 0)
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _x_coord (round __x_coord))
   (setq _y_coord (round __y_coord))
   (setq _radius (round __radius))
   (setq _id (round __id))
   self)
  (:x_coord
   (&optional __x_coord)
   (if __x_coord (setq _x_coord __x_coord)) _x_coord)
  (:y_coord
   (&optional __y_coord)
   (if __y_coord (setq _y_coord __y_coord)) _y_coord)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; int32 _x_coord
    4
    ;; int32 _y_coord
    4
    ;; int32 _radius
    4
    ;; int8 _id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x_coord
       (write-long _x_coord s)
     ;; int32 _y_coord
       (write-long _y_coord s)
     ;; int32 _radius
       (write-long _radius s)
     ;; int8 _id
       (write-byte _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x_coord
     (setq _x_coord (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y_coord
     (setq _y_coord (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _radius
     (setq _radius (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id 127) (setq _id (- _id 256)))
   ;;
   self)
  )

(setf (get Robotics_Report2::Blob_Params :md5sum-) "a6a7bef06e2fbe7fca6bc92358ec6b49")
(setf (get Robotics_Report2::Blob_Params :datatype-) "Robotics_Report2/Blob_Params")
(setf (get Robotics_Report2::Blob_Params :definition-)
      "int32 x_coord
int32 y_coord
int32 radius
int8 id

")



(provide :Robotics_Report2/Blob_Params "a6a7bef06e2fbe7fca6bc92358ec6b49")


