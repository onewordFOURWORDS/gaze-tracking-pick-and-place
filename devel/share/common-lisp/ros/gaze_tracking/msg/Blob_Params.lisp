; Auto-generated. Do not edit!


(cl:in-package gaze_tracking-msg)


;//! \htmlinclude Blob_Params.msg.html

(cl:defclass <Blob_Params> (roslisp-msg-protocol:ros-message)
  ((x_coord
    :reader x_coord
    :initarg :x_coord
    :type cl:integer
    :initform 0)
   (y_coord
    :reader y_coord
    :initarg :y_coord
    :type cl:integer
    :initform 0)
   (radius
    :reader radius
    :initarg :radius
    :type cl:integer
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Blob_Params (<Blob_Params>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Blob_Params>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Blob_Params)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gaze_tracking-msg:<Blob_Params> is deprecated: use gaze_tracking-msg:Blob_Params instead.")))

(cl:ensure-generic-function 'x_coord-val :lambda-list '(m))
(cl:defmethod x_coord-val ((m <Blob_Params>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gaze_tracking-msg:x_coord-val is deprecated.  Use gaze_tracking-msg:x_coord instead.")
  (x_coord m))

(cl:ensure-generic-function 'y_coord-val :lambda-list '(m))
(cl:defmethod y_coord-val ((m <Blob_Params>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gaze_tracking-msg:y_coord-val is deprecated.  Use gaze_tracking-msg:y_coord instead.")
  (y_coord m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <Blob_Params>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gaze_tracking-msg:radius-val is deprecated.  Use gaze_tracking-msg:radius instead.")
  (radius m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Blob_Params>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gaze_tracking-msg:id-val is deprecated.  Use gaze_tracking-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Blob_Params>) ostream)
  "Serializes a message object of type '<Blob_Params>"
  (cl:let* ((signed (cl:slot-value msg 'x_coord)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y_coord)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'radius)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Blob_Params>) istream)
  "Deserializes a message object of type '<Blob_Params>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x_coord) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y_coord) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'radius) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Blob_Params>)))
  "Returns string type for a message object of type '<Blob_Params>"
  "gaze_tracking/Blob_Params")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Blob_Params)))
  "Returns string type for a message object of type 'Blob_Params"
  "gaze_tracking/Blob_Params")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Blob_Params>)))
  "Returns md5sum for a message object of type '<Blob_Params>"
  "a6a7bef06e2fbe7fca6bc92358ec6b49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Blob_Params)))
  "Returns md5sum for a message object of type 'Blob_Params"
  "a6a7bef06e2fbe7fca6bc92358ec6b49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Blob_Params>)))
  "Returns full string definition for message of type '<Blob_Params>"
  (cl:format cl:nil "int32 x_coord~%int32 y_coord~%int32 radius~%int8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Blob_Params)))
  "Returns full string definition for message of type 'Blob_Params"
  (cl:format cl:nil "int32 x_coord~%int32 y_coord~%int32 radius~%int8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Blob_Params>))
  (cl:+ 0
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Blob_Params>))
  "Converts a ROS message object to a list"
  (cl:list 'Blob_Params
    (cl:cons ':x_coord (x_coord msg))
    (cl:cons ':y_coord (y_coord msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':id (id msg))
))
