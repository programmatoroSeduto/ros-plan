; Auto-generated. Do not edit!


(cl:in-package armor_msgs-msg)


;//! \htmlinclude QueryItem.msg.html

(cl:defclass <QueryItem> (roslisp-msg-protocol:ros-message)
  ((key
    :reader key
    :initarg :key
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:string
    :initform ""))
)

(cl:defclass QueryItem (<QueryItem>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QueryItem>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QueryItem)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name armor_msgs-msg:<QueryItem> is deprecated: use armor_msgs-msg:QueryItem instead.")))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <QueryItem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armor_msgs-msg:key-val is deprecated.  Use armor_msgs-msg:key instead.")
  (key m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <QueryItem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armor_msgs-msg:value-val is deprecated.  Use armor_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QueryItem>) ostream)
  "Serializes a message object of type '<QueryItem>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'key))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QueryItem>) istream)
  "Deserializes a message object of type '<QueryItem>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QueryItem>)))
  "Returns string type for a message object of type '<QueryItem>"
  "armor_msgs/QueryItem")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryItem)))
  "Returns string type for a message object of type 'QueryItem"
  "armor_msgs/QueryItem")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QueryItem>)))
  "Returns md5sum for a message object of type '<QueryItem>"
  "cf57fdc6617a881a88c16e768132149c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QueryItem)))
  "Returns md5sum for a message object of type 'QueryItem"
  "cf57fdc6617a881a88c16e768132149c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QueryItem>)))
  "Returns full string definition for message of type '<QueryItem>"
  (cl:format cl:nil "string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QueryItem)))
  "Returns full string definition for message of type 'QueryItem"
  (cl:format cl:nil "string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QueryItem>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'key))
     4 (cl:length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QueryItem>))
  "Converts a ROS message object to a list"
  (cl:list 'QueryItem
    (cl:cons ':key (key msg))
    (cl:cons ':value (value msg))
))
