;; Auto-generated. Do not edit!


(when (boundp 'armor_msgs::ArmorDirectiveList)
  (if (not (find-package "ARMOR_MSGS"))
    (make-package "ARMOR_MSGS"))
  (shadow 'ArmorDirectiveList (find-package "ARMOR_MSGS")))
(unless (find-package "ARMOR_MSGS::ARMORDIRECTIVELIST")
  (make-package "ARMOR_MSGS::ARMORDIRECTIVELIST"))
(unless (find-package "ARMOR_MSGS::ARMORDIRECTIVELISTREQUEST")
  (make-package "ARMOR_MSGS::ARMORDIRECTIVELISTREQUEST"))
(unless (find-package "ARMOR_MSGS::ARMORDIRECTIVELISTRESPONSE")
  (make-package "ARMOR_MSGS::ARMORDIRECTIVELISTRESPONSE"))

(in-package "ROS")





(defclass armor_msgs::ArmorDirectiveListRequest
  :super ros::object
  :slots (_armor_requests ))

(defmethod armor_msgs::ArmorDirectiveListRequest
  (:init
   (&key
    ((:armor_requests __armor_requests) ())
    )
   (send-super :init)
   (setq _armor_requests __armor_requests)
   self)
  (:armor_requests
   (&rest __armor_requests)
   (if (keywordp (car __armor_requests))
       (send* _armor_requests __armor_requests)
     (progn
       (if __armor_requests (setq _armor_requests (car __armor_requests)))
       _armor_requests)))
  (:serialization-length
   ()
   (+
    ;; armor_msgs/ArmorDirectiveReq[] _armor_requests
    (apply #'+ (send-all _armor_requests :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; armor_msgs/ArmorDirectiveReq[] _armor_requests
     (write-long (length _armor_requests) s)
     (dolist (elem _armor_requests)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; armor_msgs/ArmorDirectiveReq[] _armor_requests
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _armor_requests (let (r) (dotimes (i n) (push (instance armor_msgs::ArmorDirectiveReq :init) r)) r))
     (dolist (elem- _armor_requests)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass armor_msgs::ArmorDirectiveListResponse
  :super ros::object
  :slots (_success _is_consistent _armor_responses ))

(defmethod armor_msgs::ArmorDirectiveListResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:is_consistent __is_consistent) nil)
    ((:armor_responses __armor_responses) ())
    )
   (send-super :init)
   (setq _success __success)
   (setq _is_consistent __is_consistent)
   (setq _armor_responses __armor_responses)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:is_consistent
   (&optional (__is_consistent :null))
   (if (not (eq __is_consistent :null)) (setq _is_consistent __is_consistent)) _is_consistent)
  (:armor_responses
   (&rest __armor_responses)
   (if (keywordp (car __armor_responses))
       (send* _armor_responses __armor_responses)
     (progn
       (if __armor_responses (setq _armor_responses (car __armor_responses)))
       _armor_responses)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; bool _is_consistent
    1
    ;; armor_msgs/ArmorDirectiveRes[] _armor_responses
    (apply #'+ (send-all _armor_responses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_consistent
       (if _is_consistent (write-byte -1 s) (write-byte 0 s))
     ;; armor_msgs/ArmorDirectiveRes[] _armor_responses
     (write-long (length _armor_responses) s)
     (dolist (elem _armor_responses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_consistent
     (setq _is_consistent (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; armor_msgs/ArmorDirectiveRes[] _armor_responses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _armor_responses (let (r) (dotimes (i n) (push (instance armor_msgs::ArmorDirectiveRes :init) r)) r))
     (dolist (elem- _armor_responses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass armor_msgs::ArmorDirectiveList
  :super ros::object
  :slots ())

(setf (get armor_msgs::ArmorDirectiveList :md5sum-) "c8f7a3567fd279dae5ca45853049f5a7")
(setf (get armor_msgs::ArmorDirectiveList :datatype-) "armor_msgs/ArmorDirectiveList")
(setf (get armor_msgs::ArmorDirectiveList :request) armor_msgs::ArmorDirectiveListRequest)
(setf (get armor_msgs::ArmorDirectiveList :response) armor_msgs::ArmorDirectiveListResponse)

(defmethod armor_msgs::ArmorDirectiveListRequest
  (:response () (instance armor_msgs::ArmorDirectiveListResponse :init)))

(setf (get armor_msgs::ArmorDirectiveListRequest :md5sum-) "c8f7a3567fd279dae5ca45853049f5a7")
(setf (get armor_msgs::ArmorDirectiveListRequest :datatype-) "armor_msgs/ArmorDirectiveListRequest")
(setf (get armor_msgs::ArmorDirectiveListRequest :definition-)
      "ArmorDirectiveReq[] armor_requests

================================================================================
MSG: armor_msgs/ArmorDirectiveReq
string client_name
string reference_name
string command
string primary_command_spec
string secondary_command_spec
---
bool success
bool is_consistent
ArmorDirectiveRes[] armor_responses

================================================================================
MSG: armor_msgs/ArmorDirectiveRes
bool success
bool timeout
int32 exit_code
string error_description
bool is_consistent
string[] queried_objects
QueryItem[] sparql_queried_objects
================================================================================
MSG: armor_msgs/QueryItem
string key
")

(setf (get armor_msgs::ArmorDirectiveListResponse :md5sum-) "c8f7a3567fd279dae5ca45853049f5a7")
(setf (get armor_msgs::ArmorDirectiveListResponse :datatype-) "armor_msgs/ArmorDirectiveListResponse")
(setf (get armor_msgs::ArmorDirectiveListResponse :definition-)
      "ArmorDirectiveReq[] armor_requests

================================================================================
MSG: armor_msgs/ArmorDirectiveReq
string client_name
string reference_name
string command
string primary_command_spec
string secondary_command_spec
---
bool success
bool is_consistent
ArmorDirectiveRes[] armor_responses

================================================================================
MSG: armor_msgs/ArmorDirectiveRes
bool success
bool timeout
int32 exit_code
string error_description
bool is_consistent
string[] queried_objects
QueryItem[] sparql_queried_objects
================================================================================
MSG: armor_msgs/QueryItem
string key
")



(provide :armor_msgs/ArmorDirectiveList "c8f7a3567fd279dae5ca45853049f5a7")


