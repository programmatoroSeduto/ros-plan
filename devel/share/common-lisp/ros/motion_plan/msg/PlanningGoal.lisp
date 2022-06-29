; Auto-generated. Do not edit!


(cl:in-package motion_plan-msg)


;//! \htmlinclude PlanningGoal.msg.html

(cl:defclass <PlanningGoal> (roslisp-msg-protocol:ros-message)
  ((target_pose
    :reader target_pose
    :initarg :target_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass PlanningGoal (<PlanningGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanningGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanningGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motion_plan-msg:<PlanningGoal> is deprecated: use motion_plan-msg:PlanningGoal instead.")))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <PlanningGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_plan-msg:target_pose-val is deprecated.  Use motion_plan-msg:target_pose instead.")
  (target_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanningGoal>) ostream)
  "Serializes a message object of type '<PlanningGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanningGoal>) istream)
  "Deserializes a message object of type '<PlanningGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanningGoal>)))
  "Returns string type for a message object of type '<PlanningGoal>"
  "motion_plan/PlanningGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanningGoal)))
  "Returns string type for a message object of type 'PlanningGoal"
  "motion_plan/PlanningGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanningGoal>)))
  "Returns md5sum for a message object of type '<PlanningGoal>"
  "257d089627d7eb7136c24d3593d05a16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanningGoal)))
  "Returns md5sum for a message object of type 'PlanningGoal"
  "257d089627d7eb7136c24d3593d05a16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanningGoal>)))
  "Returns full string definition for message of type '<PlanningGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/PoseStamped target_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanningGoal)))
  "Returns full string definition for message of type 'PlanningGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/PoseStamped target_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanningGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanningGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanningGoal
    (cl:cons ':target_pose (target_pose msg))
))