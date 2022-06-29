; Auto-generated. Do not edit!


(cl:in-package armor_msgs-srv)


;//! \htmlinclude ArmorDirectiveList-request.msg.html

(cl:defclass <ArmorDirectiveList-request> (roslisp-msg-protocol:ros-message)
  ((armor_requests
    :reader armor_requests
    :initarg :armor_requests
    :type (cl:vector armor_msgs-msg:ArmorDirectiveReq)
   :initform (cl:make-array 0 :element-type 'armor_msgs-msg:ArmorDirectiveReq :initial-element (cl:make-instance 'armor_msgs-msg:ArmorDirectiveReq))))
)

(cl:defclass ArmorDirectiveList-request (<ArmorDirectiveList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmorDirectiveList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmorDirectiveList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name armor_msgs-srv:<ArmorDirectiveList-request> is deprecated: use armor_msgs-srv:ArmorDirectiveList-request instead.")))

(cl:ensure-generic-function 'armor_requests-val :lambda-list '(m))
(cl:defmethod armor_requests-val ((m <ArmorDirectiveList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armor_msgs-srv:armor_requests-val is deprecated.  Use armor_msgs-srv:armor_requests instead.")
  (armor_requests m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmorDirectiveList-request>) ostream)
  "Serializes a message object of type '<ArmorDirectiveList-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'armor_requests))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'armor_requests))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmorDirectiveList-request>) istream)
  "Deserializes a message object of type '<ArmorDirectiveList-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'armor_requests) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'armor_requests)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'armor_msgs-msg:ArmorDirectiveReq))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmorDirectiveList-request>)))
  "Returns string type for a service object of type '<ArmorDirectiveList-request>"
  "armor_msgs/ArmorDirectiveListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmorDirectiveList-request)))
  "Returns string type for a service object of type 'ArmorDirectiveList-request"
  "armor_msgs/ArmorDirectiveListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmorDirectiveList-request>)))
  "Returns md5sum for a message object of type '<ArmorDirectiveList-request>"
  "c8f7a3567fd279dae5ca45853049f5a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmorDirectiveList-request)))
  "Returns md5sum for a message object of type 'ArmorDirectiveList-request"
  "c8f7a3567fd279dae5ca45853049f5a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmorDirectiveList-request>)))
  "Returns full string definition for message of type '<ArmorDirectiveList-request>"
  (cl:format cl:nil "ArmorDirectiveReq[] armor_requests~%~%================================================================================~%MSG: armor_msgs/ArmorDirectiveReq~%string client_name~%string reference_name~%string command~%string primary_command_spec~%string secondary_command_spec~%string[] args~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmorDirectiveList-request)))
  "Returns full string definition for message of type 'ArmorDirectiveList-request"
  (cl:format cl:nil "ArmorDirectiveReq[] armor_requests~%~%================================================================================~%MSG: armor_msgs/ArmorDirectiveReq~%string client_name~%string reference_name~%string command~%string primary_command_spec~%string secondary_command_spec~%string[] args~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmorDirectiveList-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'armor_requests) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmorDirectiveList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmorDirectiveList-request
    (cl:cons ':armor_requests (armor_requests msg))
))
;//! \htmlinclude ArmorDirectiveList-response.msg.html

(cl:defclass <ArmorDirectiveList-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (is_consistent
    :reader is_consistent
    :initarg :is_consistent
    :type cl:boolean
    :initform cl:nil)
   (armor_responses
    :reader armor_responses
    :initarg :armor_responses
    :type (cl:vector armor_msgs-msg:ArmorDirectiveRes)
   :initform (cl:make-array 0 :element-type 'armor_msgs-msg:ArmorDirectiveRes :initial-element (cl:make-instance 'armor_msgs-msg:ArmorDirectiveRes))))
)

(cl:defclass ArmorDirectiveList-response (<ArmorDirectiveList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmorDirectiveList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmorDirectiveList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name armor_msgs-srv:<ArmorDirectiveList-response> is deprecated: use armor_msgs-srv:ArmorDirectiveList-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ArmorDirectiveList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armor_msgs-srv:success-val is deprecated.  Use armor_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'is_consistent-val :lambda-list '(m))
(cl:defmethod is_consistent-val ((m <ArmorDirectiveList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armor_msgs-srv:is_consistent-val is deprecated.  Use armor_msgs-srv:is_consistent instead.")
  (is_consistent m))

(cl:ensure-generic-function 'armor_responses-val :lambda-list '(m))
(cl:defmethod armor_responses-val ((m <ArmorDirectiveList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armor_msgs-srv:armor_responses-val is deprecated.  Use armor_msgs-srv:armor_responses instead.")
  (armor_responses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmorDirectiveList-response>) ostream)
  "Serializes a message object of type '<ArmorDirectiveList-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_consistent) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'armor_responses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'armor_responses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmorDirectiveList-response>) istream)
  "Deserializes a message object of type '<ArmorDirectiveList-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_consistent) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'armor_responses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'armor_responses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'armor_msgs-msg:ArmorDirectiveRes))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmorDirectiveList-response>)))
  "Returns string type for a service object of type '<ArmorDirectiveList-response>"
  "armor_msgs/ArmorDirectiveListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmorDirectiveList-response)))
  "Returns string type for a service object of type 'ArmorDirectiveList-response"
  "armor_msgs/ArmorDirectiveListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmorDirectiveList-response>)))
  "Returns md5sum for a message object of type '<ArmorDirectiveList-response>"
  "c8f7a3567fd279dae5ca45853049f5a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmorDirectiveList-response)))
  "Returns md5sum for a message object of type 'ArmorDirectiveList-response"
  "c8f7a3567fd279dae5ca45853049f5a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmorDirectiveList-response>)))
  "Returns full string definition for message of type '<ArmorDirectiveList-response>"
  (cl:format cl:nil "bool success~%bool is_consistent~%ArmorDirectiveRes[] armor_responses~%~%================================================================================~%MSG: armor_msgs/ArmorDirectiveRes~%bool success~%bool timeout~%int32 exit_code~%string error_description~%bool is_consistent~%string[] queried_objects~%QueryItem[] sparql_queried_objects~%================================================================================~%MSG: armor_msgs/QueryItem~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmorDirectiveList-response)))
  "Returns full string definition for message of type 'ArmorDirectiveList-response"
  (cl:format cl:nil "bool success~%bool is_consistent~%ArmorDirectiveRes[] armor_responses~%~%================================================================================~%MSG: armor_msgs/ArmorDirectiveRes~%bool success~%bool timeout~%int32 exit_code~%string error_description~%bool is_consistent~%string[] queried_objects~%QueryItem[] sparql_queried_objects~%================================================================================~%MSG: armor_msgs/QueryItem~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmorDirectiveList-response>))
  (cl:+ 0
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'armor_responses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmorDirectiveList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmorDirectiveList-response
    (cl:cons ':success (success msg))
    (cl:cons ':is_consistent (is_consistent msg))
    (cl:cons ':armor_responses (armor_responses msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ArmorDirectiveList)))
  'ArmorDirectiveList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ArmorDirectiveList)))
  'ArmorDirectiveList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmorDirectiveList)))
  "Returns string type for a service object of type '<ArmorDirectiveList>"
  "armor_msgs/ArmorDirectiveList")