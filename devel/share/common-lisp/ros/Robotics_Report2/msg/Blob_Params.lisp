; Auto-generated. Do not edit!


(cl:in-package Robotics_Report2-msg)


;//! \htmlinclude Blob_Params.msg.html

(cl:defclass <Blob_Params> (roslisp-msg-protocol:ros-message)
  ((x_coord
    :reader x_coord
    :initarg :x_coord
    :type cl:fixnum
    :initform 0)
   (y_coord
    :reader y_coord
    :initarg :y_coord
    :type cl:fixnum
    :initform 0)
   (radius
    :reader radius
    :initarg :radius
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Blob_Params (<Blob_Params>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Blob_Params>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Blob_Params)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Robotics_Report2-msg:<Blob_Params> is deprecated: use Robotics_Report2-msg:Blob_Params instead.")))

(cl:ensure-generic-function 'x_coord-val :lambda-list '(m))
(cl:defmethod x_coord-val ((m <Blob_Params>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Robotics_Report2-msg:x_coord-val is deprecated.  Use Robotics_Report2-msg:x_coord instead.")
  (x_coord m))

(cl:ensure-generic-function 'y_coord-val :lambda-list '(m))
(cl:defmethod y_coord-val ((m <Blob_Params>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Robotics_Report2-msg:y_coord-val is deprecated.  Use Robotics_Report2-msg:y_coord instead.")
  (y_coord m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <Blob_Params>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Robotics_Report2-msg:radius-val is deprecated.  Use Robotics_Report2-msg:radius instead.")
  (radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Blob_Params>) ostream)
  "Serializes a message object of type '<Blob_Params>"
  (cl:let* ((signed (cl:slot-value msg 'x_coord)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y_coord)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'radius)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Blob_Params>) istream)
  "Deserializes a message object of type '<Blob_Params>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x_coord) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y_coord) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'radius) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Blob_Params>)))
  "Returns string type for a message object of type '<Blob_Params>"
  "Robotics_Report2/Blob_Params")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Blob_Params)))
  "Returns string type for a message object of type 'Blob_Params"
  "Robotics_Report2/Blob_Params")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Blob_Params>)))
  "Returns md5sum for a message object of type '<Blob_Params>"
  "27713404fd77ebe3383ee286844ae54f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Blob_Params)))
  "Returns md5sum for a message object of type 'Blob_Params"
  "27713404fd77ebe3383ee286844ae54f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Blob_Params>)))
  "Returns full string definition for message of type '<Blob_Params>"
  (cl:format cl:nil "int8 x_coord~%int8 y_coord~%int8 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Blob_Params)))
  "Returns full string definition for message of type 'Blob_Params"
  (cl:format cl:nil "int8 x_coord~%int8 y_coord~%int8 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Blob_Params>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Blob_Params>))
  "Converts a ROS message object to a list"
  (cl:list 'Blob_Params
    (cl:cons ':x_coord (x_coord msg))
    (cl:cons ':y_coord (y_coord msg))
    (cl:cons ':radius (radius msg))
))
