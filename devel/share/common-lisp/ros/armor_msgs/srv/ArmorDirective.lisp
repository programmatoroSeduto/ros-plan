; Auto-generated. Do not edit!


(cl:in-package armor_msgs-srv)


;//! \htmlinclude ArmorDirective-request.msg.html

(cl:defclass <ArmorDirective-request> (roslisp-msg-protocol:ros-message)
  ((armor_request
    :reader armor_request
    :initarg :armor_request
    :type armor_msgs-msg:ArmorDirectiveReq
    :initform (cl:make-instance 'armor_msgs-msg:ArmorDirectiveReq)))
)

(cl:defclass ArmorDirective-request (<ArmorDirective-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmorDirective-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmorDirective-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name armor_msgs-srv:<ArmorDirective-request> is deprecated: use armor_msgs-srv:ArmorDirective-request instead.")))

(cl:ensure-generic-function 'armor_request-val :lambda-list '(m))
(cl:defmethod armor_request-val ((m <ArmorDirective-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armor_msgs-srv:armor_request-val is deprecated.  Use armor_msgs-srv:armor_request instead.")
  (armor_request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmorDirective-request>) ostream)
  "Serializes a message object of type '<ArmorDirective-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'armor_request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmorDirective-request>) istream)
  "Deserializes a message object of type '<ArmorDirective-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'armor_request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmorDirective-request>)))
  "Returns string type for a service object of type '<ArmorDirective-request>"
  "armor_msgs/ArmorDirectiveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmorDirective-request)))
  "Returns string type for a service object of type 'ArmorDirective-request"
  "armor_msgs/ArmorDirectiveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmorDirective-request>)))
  "Returns md5sum for a message object of type '<ArmorDirective-request>"
  "39cbf11e18dc47e2c7b5fda84e5d8c39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmorDirective-request)))
  "Returns md5sum for a message object of type 'ArmorDirective-request"
  "39cbf11e18dc47e2c7b5fda84e5d8c39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmorDirective-request>)))
  "Returns full string definition for message of type '<ArmorDirective-request>"
  (cl:format cl:nil "ArmorDirectiveReq armor_request~%~%================================================================================~%MSG: armor_msgs/ArmorDirectiveReq~%string client_name~%string reference_name~%string command~%string primary_command_spec~%string secondary_command_spec~%string[] args~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmorDirective-request)))
  "Returns full string definition for message of type 'ArmorDirective-request"
  (cl:format cl:nil "ArmorDirectiveReq armor_request~%~%================================================================================~%MSG: armor_msgs/ArmorDirectiveReq~%string client_name~%string reference_name~%string command~%string primary_command_spec~%string secondary_command_spec~%string[] args~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmorDirective-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'armor_request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmorDirective-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmorDirective-request
    (cl:cons ':armor_request (armor_request msg))
))
;//! \htmlinclude ArmorDirective-response.msg.html

(cl:defclass <ArmorDirective-response> (roslisp-msg-protocol:ros-message)
  ((armor_response
    :reader armor_response
    :initarg :armor_response
    :type armor_msgs-msg:ArmorDirectiveRes
    :initform (cl:make-instance 'armor_msgs-msg:ArmorDirectiveRes)))
)

(cl:defclass ArmorDirective-response (<ArmorDirective-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmorDirective-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmorDirective-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name armor_msgs-srv:<ArmorDirective-response> is deprecated: use armor_msgs-srv:ArmorDirective-response instead.")))

(cl:ensure-generic-function 'armor_response-val :lambda-list '(m))
(cl:defmethod armor_response-val ((m <ArmorDirective-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armor_msgs-srv:armor_response-val is deprecated.  Use armor_msgs-srv:armor_response instead.")
  (armor_response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmorDirective-response>) ostream)
  "Serializes a message object of type '<ArmorDirective-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'armor_response) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmorDirective-response>) istream)
  "Deserializes a message object of type '<ArmorDirective-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'armor_response) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmorDirective-response>)))
  "Returns string type for a service object of type '<ArmorDirective-response>"
  "armor_msgs/ArmorDirectiveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmorDirective-response)))
  "Returns string type for a service object of type 'ArmorDirective-response"
  "armor_msgs/ArmorDirectiveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmorDirective-response>)))
  "Returns md5sum for a message object of type '<ArmorDirective-response>"
  "39cbf11e18dc47e2c7b5fda84e5d8c39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmorDirective-response)))
  "Returns md5sum for a message object of type 'ArmorDirective-response"
  "39cbf11e18dc47e2c7b5fda84e5d8c39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmorDirective-response>)))
  "Returns full string definition for message of type '<ArmorDirective-response>"
  (cl:format cl:nil "ArmorDirectiveRes armor_response~%~%~%================================================================================~%MSG: armor_msgs/ArmorDirectiveRes~%bool success~%bool timeout~%int32 exit_code~%string error_description~%bool is_consistent~%string[] queried_objects~%QueryItem[] sparql_queried_objects~%================================================================================~%MSG: armor_msgs/QueryItem~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmorDirective-response)))
  "Returns full string definition for message of type 'ArmorDirective-response"
  (cl:format cl:nil "ArmorDirectiveRes armor_response~%~%~%================================================================================~%MSG: armor_msgs/ArmorDirectiveRes~%bool success~%bool timeout~%int32 exit_code~%string error_description~%bool is_consistent~%string[] queried_objects~%QueryItem[] sparql_queried_objects~%================================================================================~%MSG: armor_msgs/QueryItem~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmorDirective-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'armor_response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmorDirective-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmorDirective-response
    (cl:cons ':armor_response (armor_response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ArmorDirective)))
  'ArmorDirective-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ArmorDirective)))
  'ArmorDirective-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmorDirective)))
  "Returns string type for a service object of type '<ArmorDirective>"
  "armor_msgs/ArmorDirective")