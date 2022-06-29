; Auto-generated. Do not edit!


(cl:in-package armor_msgs-msg)


;//! \htmlinclude ArmorDirectiveRes.msg.html

(cl:defclass <ArmorDirectiveRes> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:boolean
    :initform cl:nil)
   (exit_code
    :reader exit_code
    :initarg :exit_code
    :type cl:integer
    :initform 0)
   (error_description
    :reader error_description
    :initarg :error_description
    :type cl:string
    :initform "")
   (is_consistent
    :reader is_consistent
    :initarg :is_consistent
    :type cl:boolean
    :initform cl:nil)
   (queried_objects
    :reader queried_objects
    :initarg :queried_objects
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (sparql_queried_objects
    :reader sparql_queried_objects
    :initarg :sparql_queried_objects
    :type (cl:vector armor_msgs-msg:QueryItem)
   :initform (cl:make-array 0 :element-type 'armor_msgs-msg:QueryItem :initial-element (cl:make-instance 'armor_msgs-msg:QueryItem))))
)

(cl:defclass ArmorDirectiveRes (<ArmorDirectiveRes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmorDirectiveRes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmorDirectiveRes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name armor_msgs-msg:<ArmorDirectiveRes> is deprecated: use armor_msgs-msg:ArmorDirectiveRes instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ArmorDirectiveRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armor_msgs-msg:success-val is deprecated.  Use armor_msgs-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <ArmorDirectiveRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armor_msgs-msg:timeout-val is deprecated.  Use armor_msgs-msg:timeout instead.")
  (timeout m))

(cl:ensure-generic-function 'exit_code-val :lambda-list '(m))
(cl:defmethod exit_code-val ((m <ArmorDirectiveRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armor_msgs-msg:exit_code-val is deprecated.  Use armor_msgs-msg:exit_code instead.")
  (exit_code m))

(cl:ensure-generic-function 'error_description-val :lambda-list '(m))
(cl:defmethod error_description-val ((m <ArmorDirectiveRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armor_msgs-msg:error_description-val is deprecated.  Use armor_msgs-msg:error_description instead.")
  (error_description m))

(cl:ensure-generic-function 'is_consistent-val :lambda-list '(m))
(cl:defmethod is_consistent-val ((m <ArmorDirectiveRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armor_msgs-msg:is_consistent-val is deprecated.  Use armor_msgs-msg:is_consistent instead.")
  (is_consistent m))

(cl:ensure-generic-function 'queried_objects-val :lambda-list '(m))
(cl:defmethod queried_objects-val ((m <ArmorDirectiveRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armor_msgs-msg:queried_objects-val is deprecated.  Use armor_msgs-msg:queried_objects instead.")
  (queried_objects m))

(cl:ensure-generic-function 'sparql_queried_objects-val :lambda-list '(m))
(cl:defmethod sparql_queried_objects-val ((m <ArmorDirectiveRes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armor_msgs-msg:sparql_queried_objects-val is deprecated.  Use armor_msgs-msg:sparql_queried_objects instead.")
  (sparql_queried_objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmorDirectiveRes>) ostream)
  "Serializes a message object of type '<ArmorDirectiveRes>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'timeout) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'exit_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_description))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_consistent) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'queried_objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'queried_objects))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sparql_queried_objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sparql_queried_objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmorDirectiveRes>) istream)
  "Deserializes a message object of type '<ArmorDirectiveRes>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'timeout) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'exit_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'is_consistent) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'queried_objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'queried_objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sparql_queried_objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sparql_queried_objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'armor_msgs-msg:QueryItem))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmorDirectiveRes>)))
  "Returns string type for a message object of type '<ArmorDirectiveRes>"
  "armor_msgs/ArmorDirectiveRes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmorDirectiveRes)))
  "Returns string type for a message object of type 'ArmorDirectiveRes"
  "armor_msgs/ArmorDirectiveRes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmorDirectiveRes>)))
  "Returns md5sum for a message object of type '<ArmorDirectiveRes>"
  "6846cf2c4447d7c66f608d63e1f65e77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmorDirectiveRes)))
  "Returns md5sum for a message object of type 'ArmorDirectiveRes"
  "6846cf2c4447d7c66f608d63e1f65e77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmorDirectiveRes>)))
  "Returns full string definition for message of type '<ArmorDirectiveRes>"
  (cl:format cl:nil "bool success~%bool timeout~%int32 exit_code~%string error_description~%bool is_consistent~%string[] queried_objects~%QueryItem[] sparql_queried_objects~%================================================================================~%MSG: armor_msgs/QueryItem~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmorDirectiveRes)))
  "Returns full string definition for message of type 'ArmorDirectiveRes"
  (cl:format cl:nil "bool success~%bool timeout~%int32 exit_code~%string error_description~%bool is_consistent~%string[] queried_objects~%QueryItem[] sparql_queried_objects~%================================================================================~%MSG: armor_msgs/QueryItem~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmorDirectiveRes>))
  (cl:+ 0
     1
     1
     4
     4 (cl:length (cl:slot-value msg 'error_description))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'queried_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sparql_queried_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmorDirectiveRes>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmorDirectiveRes
    (cl:cons ':success (success msg))
    (cl:cons ':timeout (timeout msg))
    (cl:cons ':exit_code (exit_code msg))
    (cl:cons ':error_description (error_description msg))
    (cl:cons ':is_consistent (is_consistent msg))
    (cl:cons ':queried_objects (queried_objects msg))
    (cl:cons ':sparql_queried_objects (sparql_queried_objects msg))
))
