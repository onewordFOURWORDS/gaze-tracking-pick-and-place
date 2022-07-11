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
  :slots (_x_coord _y_coord _radius ))

(defmethod Robotics_Report2::Blob_Params
  (:init
   (&key
    ((:x_coord __x_coord) 0)
    ((:y_coord __y_coord) 0)
    ((:radius __radius) 0)
    )
   (send-super :init)
   (setq _x_coord (round __x_coord))
   (setq _y_coord (round __y_coord))
   (setq _radius (round __radius))
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
  (:serialization-length
   ()
   (+
    ;; int8 _x_coord
    1
    ;; int8 _y_coord
    1
    ;; int8 _radius
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _x_coord
       (write-byte _x_coord s)
     ;; int8 _y_coord
       (write-byte _y_coord s)
     ;; int8 _radius
       (write-byte _radius s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _x_coord
     (setq _x_coord (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _x_coord 127) (setq _x_coord (- _x_coord 256)))
   ;; int8 _y_coord
     (setq _y_coord (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _y_coord 127) (setq _y_coord (- _y_coord 256)))
   ;; int8 _radius
     (setq _radius (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _radius 127) (setq _radius (- _radius 256)))
   ;;
   self)
  )

(setf (get Robotics_Report2::Blob_Params :md5sum-) "27713404fd77ebe3383ee286844ae54f")
(setf (get Robotics_Report2::Blob_Params :datatype-) "Robotics_Report2/Blob_Params")
(setf (get Robotics_Report2::Blob_Params :definition-)
      "int8 x_coord
int8 y_coord
int8 radius

")



(provide :Robotics_Report2/Blob_Params "27713404fd77ebe3383ee286844ae54f")


