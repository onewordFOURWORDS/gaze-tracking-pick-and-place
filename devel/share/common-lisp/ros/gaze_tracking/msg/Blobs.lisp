; Auto-generated. Do not edit!


(cl:in-package gaze_tracking-msg)


;//! \htmlinclude Blobs.msg.html

(cl:defclass <Blobs> (roslisp-msg-protocol:ros-message)
  ((blob_list
    :reader blob_list
    :initarg :blob_list
    :type (cl:vector gaze_tracking-msg:Blob_Params)
   :initform (cl:make-array 0 :element-type 'gaze_tracking-msg:Blob_Params :initial-element (cl:make-instance 'gaze_tracking-msg:Blob_Params))))
)

(cl:defclass Blobs (<Blobs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Blobs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Blobs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gaze_tracking-msg:<Blobs> is deprecated: use gaze_tracking-msg:Blobs instead.")))

(cl:ensure-generic-function 'blob_list-val :lambda-list '(m))
(cl:defmethod blob_list-val ((m <Blobs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gaze_tracking-msg:blob_list-val is deprecated.  Use gaze_tracking-msg:blob_list instead.")
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
    (cl:setf (cl:aref vals i) (cl:make-instance 'gaze_tracking-msg:Blob_Params))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Blobs>)))
  "Returns string type for a message object of type '<Blobs>"
  "gaze_tracking/Blobs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Blobs)))
  "Returns string type for a message object of type 'Blobs"
  "gaze_tracking/Blobs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Blobs>)))
  "Returns md5sum for a message object of type '<Blobs>"
  "5544317ff6fcb345e7b3bfefa4c6bf5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Blobs)))
  "Returns md5sum for a message object of type 'Blobs"
  "5544317ff6fcb345e7b3bfefa4c6bf5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Blobs>)))
  "Returns full string definition for message of type '<Blobs>"
  (cl:format cl:nil "gaze_tracking/Blob_Params[] blob_list~%~%================================================================================~%MSG: gaze_tracking/Blob_Params~%int32 x_coord~%int32 y_coord~%int32 radius~%int8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Blobs)))
  "Returns full string definition for message of type 'Blobs"
  (cl:format cl:nil "gaze_tracking/Blob_Params[] blob_list~%~%================================================================================~%MSG: gaze_tracking/Blob_Params~%int32 x_coord~%int32 y_coord~%int32 radius~%int8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Blobs>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'blob_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Blobs>))
  "Converts a ROS message object to a list"
  (cl:list 'Blobs
    (cl:cons ':blob_list (blob_list msg))
))
