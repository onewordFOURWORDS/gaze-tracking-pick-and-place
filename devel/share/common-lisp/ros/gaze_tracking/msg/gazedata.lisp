; Auto-generated. Do not edit!


(cl:in-package gaze_tracking-msg)


;//! \htmlinclude gazedata.msg.html

(cl:defclass <gazedata> (roslisp-msg-protocol:ros-message)
  ((POGX
    :reader POGX
    :initarg :POGX
    :type cl:float
    :initform 0.0)
   (POGY
    :reader POGY
    :initarg :POGY
    :type cl:float
    :initform 0.0)
   (POGV
    :reader POGV
    :initarg :POGV
    :type cl:float
    :initform 0.0)
   (POGD
    :reader POGD
    :initarg :POGD
    :type cl:float
    :initform 0.0))
)

(cl:defclass gazedata (<gazedata>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gazedata>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gazedata)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gaze_tracking-msg:<gazedata> is deprecated: use gaze_tracking-msg:gazedata instead.")))

(cl:ensure-generic-function 'POGX-val :lambda-list '(m))
(cl:defmethod POGX-val ((m <gazedata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gaze_tracking-msg:POGX-val is deprecated.  Use gaze_tracking-msg:POGX instead.")
  (POGX m))

(cl:ensure-generic-function 'POGY-val :lambda-list '(m))
(cl:defmethod POGY-val ((m <gazedata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gaze_tracking-msg:POGY-val is deprecated.  Use gaze_tracking-msg:POGY instead.")
  (POGY m))

(cl:ensure-generic-function 'POGV-val :lambda-list '(m))
(cl:defmethod POGV-val ((m <gazedata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gaze_tracking-msg:POGV-val is deprecated.  Use gaze_tracking-msg:POGV instead.")
  (POGV m))

(cl:ensure-generic-function 'POGD-val :lambda-list '(m))
(cl:defmethod POGD-val ((m <gazedata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gaze_tracking-msg:POGD-val is deprecated.  Use gaze_tracking-msg:POGD instead.")
  (POGD m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gazedata>) ostream)
  "Serializes a message object of type '<gazedata>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'POGX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'POGY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'POGV))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'POGD))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gazedata>) istream)
  "Deserializes a message object of type '<gazedata>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'POGX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'POGY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'POGV) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'POGD) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gazedata>)))
  "Returns string type for a message object of type '<gazedata>"
  "gaze_tracking/gazedata")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gazedata)))
  "Returns string type for a message object of type 'gazedata"
  "gaze_tracking/gazedata")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gazedata>)))
  "Returns md5sum for a message object of type '<gazedata>"
  "70030c120d5acadb46335a6d55bdf388")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gazedata)))
  "Returns md5sum for a message object of type 'gazedata"
  "70030c120d5acadb46335a6d55bdf388")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gazedata>)))
  "Returns full string definition for message of type '<gazedata>"
  (cl:format cl:nil "float32 POGX~%float32 POGY~%float32 POGV~%float32 POGD~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gazedata)))
  "Returns full string definition for message of type 'gazedata"
  (cl:format cl:nil "float32 POGX~%float32 POGY~%float32 POGV~%float32 POGD~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gazedata>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gazedata>))
  "Converts a ROS message object to a list"
  (cl:list 'gazedata
    (cl:cons ':POGX (POGX msg))
    (cl:cons ':POGY (POGY msg))
    (cl:cons ':POGV (POGV msg))
    (cl:cons ':POGD (POGD msg))
))
