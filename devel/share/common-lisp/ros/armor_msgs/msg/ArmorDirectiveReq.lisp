; Auto-generated. Do not edit!


(cl:in-package armor_msgs-msg)


;//! \htmlinclude ArmorDirectiveReq.msg.html

(cl:defclass <ArmorDirectiveReq> (roslisp-msg-protocol:ros-message)
  ((client_name
    :reader client_name
    :initarg :client_name
    :type cl:string
    :initform "")
   (reference_name
    :reader reference_name
    :initarg :reference_name
    :type cl:string
    :initform "")
   (command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (primary_command_spec
    :reader primary_command_spec
    :initarg :primary_command_spec
    :type cl:string
    :initform "")
   (secondary_command_spec
    :reader secondary_command_spec
    :initarg :secondary_command_spec
    :type cl:string
    :initform "")
   (args
    :reader args
    :initarg :args
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ArmorDirectiveReq (<ArmorDirectiveReq>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmorDirectiveReq>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmorDirectiveReq)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name armor_msgs-msg:<ArmorDirectiveReq> is deprecated: use armor_msgs-msg:ArmorDirectiveReq instead.")))

(cl:ensure-generic-function 'client_name-val :lambda-list '(m))
(cl:defmethod client_name-val ((m <ArmorDirectiveReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armor_msgs-msg:client_name-val is deprecated.  Use armor_msgs-msg:client_name instead.")
  (client_name m))

(cl:ensure-generic-function 'reference_name-val :lambda-list '(m))
(cl:defmethod reference_name-val ((m <ArmorDirectiveReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armor_msgs-msg:reference_name-val is deprecated.  Use armor_msgs-msg:reference_name instead.")
  (reference_name m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <ArmorDirectiveReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armor_msgs-msg:command-val is deprecated.  Use armor_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'primary_command_spec-val :lambda-list '(m))
(cl:defmethod primary_command_spec-val ((m <ArmorDirectiveReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armor_msgs-msg:primary_command_spec-val is deprecated.  Use armor_msgs-msg:primary_command_spec instead.")
  (primary_command_spec m))

(cl:ensure-generic-function 'secondary_command_spec-val :lambda-list '(m))
(cl:defmethod secondary_command_spec-val ((m <ArmorDirectiveReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armor_msgs-msg:secondary_command_spec-val is deprecated.  Use armor_msgs-msg:secondary_command_spec instead.")
  (secondary_command_spec m))

(cl:ensure-generic-function 'args-val :lambda-list '(m))
(cl:defmethod args-val ((m <ArmorDirectiveReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armor_msgs-msg:args-val is deprecated.  Use armor_msgs-msg:args instead.")
  (args m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmorDirectiveReq>) ostream)
  "Serializes a message object of type '<ArmorDirectiveReq>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'client_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'client_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reference_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reference_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'primary_command_spec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'primary_command_spec))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'secondary_command_spec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'secondary_command_spec))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'args))))
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
   (cl:slot-value msg 'args))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmorDirectiveReq>) istream)
  "Deserializes a message object of type '<ArmorDirectiveReq>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'client_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'client_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reference_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reference_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'primary_command_spec) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'primary_command_spec) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'secondary_command_spec) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'secondary_command_spec) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'args) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'args)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmorDirectiveReq>)))
  "Returns string type for a message object of type '<ArmorDirectiveReq>"
  "armor_msgs/ArmorDirectiveReq")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmorDirectiveReq)))
  "Returns string type for a message object of type 'ArmorDirectiveReq"
  "armor_msgs/ArmorDirectiveReq")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmorDirectiveReq>)))
  "Returns md5sum for a message object of type '<ArmorDirectiveReq>"
  "385184fa98c36b7f00729ae2078dfc92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmorDirectiveReq)))
  "Returns md5sum for a message object of type 'ArmorDirectiveReq"
  "385184fa98c36b7f00729ae2078dfc92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmorDirectiveReq>)))
  "Returns full string definition for message of type '<ArmorDirectiveReq>"
  (cl:format cl:nil "string client_name~%string reference_name~%string command~%string primary_command_spec~%string secondary_command_spec~%string[] args~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmorDirectiveReq)))
  "Returns full string definition for message of type 'ArmorDirectiveReq"
  (cl:format cl:nil "string client_name~%string reference_name~%string command~%string primary_command_spec~%string secondary_command_spec~%string[] args~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmorDirectiveReq>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'client_name))
     4 (cl:length (cl:slot-value msg 'reference_name))
     4 (cl:length (cl:slot-value msg 'command))
     4 (cl:length (cl:slot-value msg 'primary_command_spec))
     4 (cl:length (cl:slot-value msg 'secondary_command_spec))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'args) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmorDirectiveReq>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmorDirectiveReq
    (cl:cons ':client_name (client_name msg))
    (cl:cons ':reference_name (reference_name msg))
    (cl:cons ':command (command msg))
    (cl:cons ':primary_command_spec (primary_command_spec msg))
    (cl:cons ':secondary_command_spec (secondary_command_spec msg))
    (cl:cons ':args (args msg))
))
