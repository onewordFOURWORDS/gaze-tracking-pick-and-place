; Auto-generated. Do not edit!


(cl:in-package robotics_report2-msg)


;//! \htmlinclude Blobs.msg.html

(cl:defclass <Blobs> (roslisp-msg-protocol:ros-message)
  ((blob_list
    :reader blob_list
    :initarg :blob_list
    :type (cl:vector robotics_report2-msg:Blob_Params)
   :initform (cl:make-array 0 :element-type 'robotics_report2-msg:Blob_Params :initial-element (cl:make-instance 'robotics_report2-msg:Blob_Params))))
)

(cl:defclass Blobs (<Blobs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Blobs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Blobs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotics_report2-msg:<Blobs> is deprecated: use robotics_report2-msg:Blobs instead.")))

(cl:ensure-generic-function 'blob_list-val :lambda-list '(m))
(cl:defmethod blob_list-val ((m <Blobs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics_report2-msg:blob_list-val is deprecated.  Use robotics_report2-msg:blob_list instead.")
  (blob_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Blobs>) ostream)
  "Serializes a message object of type '<Blobs>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'blob_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'blob_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Blobs>) istream)
  "Deserializes a message object of type '<Blobs>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'blob_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'blob_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robotics_report2-msg:Blob_Params))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Blobs>)))
  "Returns string type for a message object of type '<Blobs>"
  "robotics_report2/Blobs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Blobs)))
  "Returns string type for a message object of type 'Blobs"
  "robotics_report2/Blobs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Blobs>)))
  "Returns md5sum for a message object of type '<Blobs>"
  "e2836b3623ac455b4a432ee2fdf4d41d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Blobs)))
  "Returns md5sum for a message object of type 'Blobs"
  "e2836b3623ac455b4a432ee2fdf4d41d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Blobs>)))
  "Returns full string definition for message of type '<Blobs>"
  (cl:format cl:nil "robotics_report2/Blob_Params[] blob_list~%~%================================================================================~%MSG: robotics_report2/Blob_Params~%int8 x_coord~%int8 y_coord~%int8 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Blobs)))
  "Returns full string definition for message of type 'Blobs"
  (cl:format cl:nil "robotics_report2/Blob_Params[] blob_list~%~%================================================================================~%MSG: robotics_report2/Blob_Params~%int8 x_coord~%int8 y_coord~%int8 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Blobs>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'blob_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Blobs>))
  "Converts a ROS message object to a list"
  (cl:list 'Blobs
    (cl:cons ':blob_list (blob_list msg))
))
