; Auto-generated. Do not edit!


(cl:in-package ur5e_control-msg)


;//! \htmlinclude Plan.msg.html

(cl:defclass <Plan> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector geometry_msgs-msg:Twist)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Twist :initial-element (cl:make-instance 'geometry_msgs-msg:Twist)))
   (modes
    :reader modes
    :initarg :modes
    :type (cl:vector std_msgs-msg:UInt8)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:UInt8 :initial-element (cl:make-instance 'std_msgs-msg:UInt8))))
)

(cl:defclass Plan (<Plan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Plan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Plan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur5e_control-msg:<Plan> is deprecated: use ur5e_control-msg:Plan instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <Plan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5e_control-msg:points-val is deprecated.  Use ur5e_control-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'modes-val :lambda-list '(m))
(cl:defmethod modes-val ((m <Plan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur5e_control-msg:modes-val is deprecated.  Use ur5e_control-msg:modes instead.")
  (modes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Plan>) ostream)
  "Serializes a message object of type '<Plan>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'modes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'modes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Plan>) istream)
  "Deserializes a message object of type '<Plan>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Twist))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'modes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'modes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:UInt8))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Plan>)))
  "Returns string type for a message object of type '<Plan>"
  "ur5e_control/Plan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Plan)))
  "Returns string type for a message object of type 'Plan"
  "ur5e_control/Plan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Plan>)))
  "Returns md5sum for a message object of type '<Plan>"
  "043039bf6ff80e5c7934062c274c6649")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Plan)))
  "Returns md5sum for a message object of type 'Plan"
  "043039bf6ff80e5c7934062c274c6649")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Plan>)))
  "Returns full string definition for message of type '<Plan>"
  (cl:format cl:nil "geometry_msgs/Twist[] points~%std_msgs/UInt8[] modes~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Plan)))
  "Returns full string definition for message of type 'Plan"
  (cl:format cl:nil "geometry_msgs/Twist[] points~%std_msgs/UInt8[] modes~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Plan>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'modes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Plan>))
  "Converts a ROS message object to a list"
  (cl:list 'Plan
    (cl:cons ':points (points msg))
    (cl:cons ':modes (modes msg))
))
