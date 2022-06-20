; Auto-generated. Do not edit!


(cl:in-package gaze_tracking-msg)


;//! \htmlinclude gazedata.msg.html

(cl:defclass <gazedata> (roslisp-msg-protocol:ros-message)
  ((BPOGX
    :reader BPOGX
    :initarg :BPOGX
    :type cl:float
    :initform 0.0)
   (BPOGY
    :reader BPOGY
    :initarg :BPOGY
    :type cl:float
    :initform 0.0)
   (BPOGV
    :reader BPOGV
    :initarg :BPOGV
    :type cl:float
    :initform 0.0))
)

(cl:defclass gazedata (<gazedata>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gazedata>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gazedata)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gaze_tracking-msg:<gazedata> is deprecated: use gaze_tracking-msg:gazedata instead.")))

(cl:ensure-generic-function 'BPOGX-val :lambda-list '(m))
(cl:defmethod BPOGX-val ((m <gazedata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gaze_tracking-msg:BPOGX-val is deprecated.  Use gaze_tracking-msg:BPOGX instead.")
  (BPOGX m))

(cl:ensure-generic-function 'BPOGY-val :lambda-list '(m))
(cl:defmethod BPOGY-val ((m <gazedata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gaze_tracking-msg:BPOGY-val is deprecated.  Use gaze_tracking-msg:BPOGY instead.")
  (BPOGY m))

(cl:ensure-generic-function 'BPOGV-val :lambda-list '(m))
(cl:defmethod BPOGV-val ((m <gazedata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gaze_tracking-msg:BPOGV-val is deprecated.  Use gaze_tracking-msg:BPOGV instead.")
  (BPOGV m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gazedata>) ostream)
  "Serializes a message object of type '<gazedata>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'BPOGX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'BPOGY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'BPOGV))))
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
    (cl:setf (cl:slot-value msg 'BPOGX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'BPOGY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'BPOGV) (roslisp-utils:decode-single-float-bits bits)))
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
  "c468a841b881d4bc2e7c92a6284034c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gazedata)))
  "Returns md5sum for a message object of type 'gazedata"
  "c468a841b881d4bc2e7c92a6284034c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gazedata>)))
  "Returns full string definition for message of type '<gazedata>"
  (cl:format cl:nil "float32 BPOGX~%float32 BPOGY~%float32 BPOGV~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gazedata)))
  "Returns full string definition for message of type 'gazedata"
  (cl:format cl:nil "float32 BPOGX~%float32 BPOGY~%float32 BPOGV~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gazedata>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gazedata>))
  "Converts a ROS message object to a list"
  (cl:list 'gazedata
    (cl:cons ':BPOGX (BPOGX msg))
    (cl:cons ':BPOGY (BPOGY msg))
    (cl:cons ':BPOGV (BPOGV msg))
))
