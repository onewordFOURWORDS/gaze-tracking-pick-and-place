; Auto-generated. Do not edit!


(cl:in-package robot_vision_lectures-msg)


;//! \htmlinclude SphereParams.msg.html

(cl:defclass <SphereParams> (roslisp-msg-protocol:ros-message)
  ((xc
    :reader xc
    :initarg :xc
    :type cl:float
    :initform 0.0)
   (yc
    :reader yc
    :initarg :yc
    :type cl:float
    :initform 0.0)
   (zc
    :reader zc
    :initarg :zc
    :type cl:float
    :initform 0.0)
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0))
)

(cl:defclass SphereParams (<SphereParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SphereParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SphereParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_vision_lectures-msg:<SphereParams> is deprecated: use robot_vision_lectures-msg:SphereParams instead.")))

(cl:ensure-generic-function 'xc-val :lambda-list '(m))
(cl:defmethod xc-val ((m <SphereParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_vision_lectures-msg:xc-val is deprecated.  Use robot_vision_lectures-msg:xc instead.")
  (xc m))

(cl:ensure-generic-function 'yc-val :lambda-list '(m))
(cl:defmethod yc-val ((m <SphereParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_vision_lectures-msg:yc-val is deprecated.  Use robot_vision_lectures-msg:yc instead.")
  (yc m))

(cl:ensure-generic-function 'zc-val :lambda-list '(m))
(cl:defmethod zc-val ((m <SphereParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_vision_lectures-msg:zc-val is deprecated.  Use robot_vision_lectures-msg:zc instead.")
  (zc m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <SphereParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_vision_lectures-msg:radius-val is deprecated.  Use robot_vision_lectures-msg:radius instead.")
  (radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SphereParams>) ostream)
  "Serializes a message object of type '<SphereParams>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'xc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'zc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SphereParams>) istream)
  "Deserializes a message object of type '<SphereParams>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SphereParams>)))
  "Returns string type for a message object of type '<SphereParams>"
  "robot_vision_lectures/SphereParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SphereParams)))
  "Returns string type for a message object of type 'SphereParams"
  "robot_vision_lectures/SphereParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SphereParams>)))
  "Returns md5sum for a message object of type '<SphereParams>"
  "e8b9db43e9aaaab48ea455f0546fdec2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SphereParams)))
  "Returns md5sum for a message object of type 'SphereParams"
  "e8b9db43e9aaaab48ea455f0546fdec2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SphereParams>)))
  "Returns full string definition for message of type '<SphereParams>"
  (cl:format cl:nil "float32 xc~%float32 yc~%float32 zc~%float32 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SphereParams)))
  "Returns full string definition for message of type 'SphereParams"
  (cl:format cl:nil "float32 xc~%float32 yc~%float32 zc~%float32 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SphereParams>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SphereParams>))
  "Converts a ROS message object to a list"
  (cl:list 'SphereParams
    (cl:cons ':xc (xc msg))
    (cl:cons ':yc (yc msg))
    (cl:cons ':zc (zc msg))
    (cl:cons ':radius (radius msg))
))
