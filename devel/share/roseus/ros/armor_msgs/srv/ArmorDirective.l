;; Auto-generated. Do not edit!


(when (boundp 'armor_msgs::ArmorDirective)
  (if (not (find-package "ARMOR_MSGS"))
    (make-package "ARMOR_MSGS"))
  (shadow 'ArmorDirective (find-package "ARMOR_MSGS")))
(unless (find-package "ARMOR_MSGS::ARMORDIRECTIVE")
  (make-package "ARMOR_MSGS::ARMORDIRECTIVE"))
(unless (find-package "ARMOR_MSGS::ARMORDIRECTIVEREQUEST")
  (make-package "ARMOR_MSGS::ARMORDIRECTIVEREQUEST"))
(unless (find-package "ARMOR_MSGS::ARMORDIRECTIVERESPONSE")
  (make-package "ARMOR_MSGS::ARMORDIRECTIVERESPONSE"))

(in-package "ROS")





(defclass armor_msgs::ArmorDirectiveRequest
  :super ros::object
  :slots (_armor_request ))

(defmethod armor_msgs::ArmorDirectiveRequest
  (:init
   (&key
    ((:armor_request __armor_request) (instance armor_msgs::ArmorDirectiveReq :init))
    )
   (send-super :init)
   (setq _armor_request __armor_request)
   self)
  (:armor_request
   (&rest __armor_request)
   (if (keywordp (car __armor_request))
       (send* _armor_request __armor_request)
     (progn
       (if __armor_request (setq _armor_request (car __armor_request)))
       _armor_request)))
  (:serialization-length
   ()
   (+
    ;; armor_msgs/ArmorDirectiveReq _armor_request
    (send _armor_request :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; armor_msgs/ArmorDirectiveReq _armor_request
       (send _armor_request :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; armor_msgs/ArmorDirectiveReq _armor_request
     (send _armor_request :deserialize buf ptr-) (incf ptr- (send _armor_request :serialization-length))
   ;;
   self)
  )

(defclass armor_msgs::ArmorDirectiveResponse
  :super ros::object
  :slots (_armor_response ))

(defmethod armor_msgs::ArmorDirectiveResponse
  (:init
   (&key
    ((:armor_response __armor_response) (instance armor_msgs::ArmorDirectiveRes :init))
    )
   (send-super :init)
   (setq _armor_response __armor_response)
   self)
  (:armor_response
   (&rest __armor_response)
   (if (keywordp (car __armor_response))
       (send* _armor_response __armor_response)
     (progn
       (if __armor_response (setq _armor_response (car __armor_response)))
       _armor_response)))
  (:serialization-length
   ()
   (+
    ;; armor_msgs/ArmorDirectiveRes _armor_response
    (send _armor_response :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; armor_msgs/ArmorDirectiveRes _armor_response
       (send _armor_response :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; armor_msgs/ArmorDirectiveRes _armor_response
     (send _armor_response :deserialize buf ptr-) (incf ptr- (send _armor_response :serialization-length))
   ;;
   self)
  )

(defclass armor_msgs::ArmorDirective
  :super ros::object
  :slots ())

(setf (get armor_msgs::ArmorDirective :md5sum-) "39cbf11e18dc47e2c7b5fda84e5d8c39")
(setf (get armor_msgs::ArmorDirective :datatype-) "armor_msgs/ArmorDirective")
(setf (get armor_msgs::ArmorDirective :request) armor_msgs::ArmorDirectiveRequest)
(setf (get armor_msgs::ArmorDirective :response) armor_msgs::ArmorDirectiveResponse)

(defmethod armor_msgs::ArmorDirectiveRequest
  (:response () (instance armor_msgs::ArmorDirectiveResponse :init)))

(setf (get armor_msgs::ArmorDirectiveRequest :md5sum-) "39cbf11e18dc47e2c7b5fda84e5d8c39")
(setf (get armor_msgs::ArmorDirectiveRequest :datatype-) "armor_msgs/ArmorDirectiveRequest")
(setf (get armor_msgs::ArmorDirectiveRequest :definition-)
      "ArmorDirectiveReq armor_request

================================================================================
MSG: armor_msgs/ArmorDirectiveReq
string client_name
string reference_name
string command
string primary_command_spec
string secondary_command_spec
---
ArmorDirectiveRes armor_response


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

(setf (get armor_msgs::ArmorDirectiveResponse :md5sum-) "39cbf11e18dc47e2c7b5fda84e5d8c39")
(setf (get armor_msgs::ArmorDirectiveResponse :datatype-) "armor_msgs/ArmorDirectiveResponse")
(setf (get armor_msgs::ArmorDirectiveResponse :definition-)
      "ArmorDirectiveReq armor_request

================================================================================
MSG: armor_msgs/ArmorDirectiveReq
string client_name
string reference_name
string command
string primary_command_spec
string secondary_command_spec
---
ArmorDirectiveRes armor_response


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



(provide :armor_msgs/ArmorDirective "39cbf11e18dc47e2c7b5fda84e5d8c39")


