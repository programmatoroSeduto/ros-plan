;; Auto-generated. Do not edit!


(when (boundp 'armor_msgs::ArmorDirectiveRes)
  (if (not (find-package "ARMOR_MSGS"))
    (make-package "ARMOR_MSGS"))
  (shadow 'ArmorDirectiveRes (find-package "ARMOR_MSGS")))
(unless (find-package "ARMOR_MSGS::ARMORDIRECTIVERES")
  (make-package "ARMOR_MSGS::ARMORDIRECTIVERES"))

(in-package "ROS")
;;//! \htmlinclude ArmorDirectiveRes.msg.html


(defclass armor_msgs::ArmorDirectiveRes
  :super ros::object
  :slots (_success _timeout _exit_code _error_description _is_consistent _queried_objects _sparql_queried_objects ))

(defmethod armor_msgs::ArmorDirectiveRes
  (:init
   (&key
    ((:success __success) nil)
    ((:timeout __timeout) nil)
    ((:exit_code __exit_code) 0)
    ((:error_description __error_description) "")
    ((:is_consistent __is_consistent) nil)
    ((:queried_objects __queried_objects) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:sparql_queried_objects __sparql_queried_objects) ())
    )
   (send-super :init)
   (setq _success __success)
   (setq _timeout __timeout)
   (setq _exit_code (round __exit_code))
   (setq _error_description (string __error_description))
   (setq _is_consistent __is_consistent)
   (setq _queried_objects __queried_objects)
   (setq _sparql_queried_objects __sparql_queried_objects)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:timeout
   (&optional (__timeout :null))
   (if (not (eq __timeout :null)) (setq _timeout __timeout)) _timeout)
  (:exit_code
   (&optional __exit_code)
   (if __exit_code (setq _exit_code __exit_code)) _exit_code)
  (:error_description
   (&optional __error_description)
   (if __error_description (setq _error_description __error_description)) _error_description)
  (:is_consistent
   (&optional (__is_consistent :null))
   (if (not (eq __is_consistent :null)) (setq _is_consistent __is_consistent)) _is_consistent)
  (:queried_objects
   (&optional __queried_objects)
   (if __queried_objects (setq _queried_objects __queried_objects)) _queried_objects)
  (:sparql_queried_objects
   (&rest __sparql_queried_objects)
   (if (keywordp (car __sparql_queried_objects))
       (send* _sparql_queried_objects __sparql_queried_objects)
     (progn
       (if __sparql_queried_objects (setq _sparql_queried_objects (car __sparql_queried_objects)))
       _sparql_queried_objects)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; bool _timeout
    1
    ;; int32 _exit_code
    4
    ;; string _error_description
    4 (length _error_description)
    ;; bool _is_consistent
    1
    ;; string[] _queried_objects
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _queried_objects)) 4
    ;; armor_msgs/QueryItem[] _sparql_queried_objects
    (apply #'+ (send-all _sparql_queried_objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; bool _timeout
       (if _timeout (write-byte -1 s) (write-byte 0 s))
     ;; int32 _exit_code
       (write-long _exit_code s)
     ;; string _error_description
       (write-long (length _error_description) s) (princ _error_description s)
     ;; bool _is_consistent
       (if _is_consistent (write-byte -1 s) (write-byte 0 s))
     ;; string[] _queried_objects
     (write-long (length _queried_objects) s)
     (dolist (elem _queried_objects)
       (write-long (length elem) s) (princ elem s)
       )
     ;; armor_msgs/QueryItem[] _sparql_queried_objects
     (write-long (length _sparql_queried_objects) s)
     (dolist (elem _sparql_queried_objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _timeout
     (setq _timeout (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _exit_code
     (setq _exit_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _error_description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _is_consistent
     (setq _is_consistent (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _queried_objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _queried_objects (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _queried_objects i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; armor_msgs/QueryItem[] _sparql_queried_objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sparql_queried_objects (let (r) (dotimes (i n) (push (instance armor_msgs::QueryItem :init) r)) r))
     (dolist (elem- _sparql_queried_objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get armor_msgs::ArmorDirectiveRes :md5sum-) "6846cf2c4447d7c66f608d63e1f65e77")
(setf (get armor_msgs::ArmorDirectiveRes :datatype-) "armor_msgs/ArmorDirectiveRes")
(setf (get armor_msgs::ArmorDirectiveRes :definition-)
      "bool success
bool timeout
int32 exit_code
string error_description
bool is_consistent
string[] queried_objects
QueryItem[] sparql_queried_objects
================================================================================
MSG: armor_msgs/QueryItem
string key
string value
")



(provide :armor_msgs/ArmorDirectiveRes "6846cf2c4447d7c66f608d63e1f65e77")


