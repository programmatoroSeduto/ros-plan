;; Auto-generated. Do not edit!


(when (boundp 'armor_msgs::ArmorDirectiveReq)
  (if (not (find-package "ARMOR_MSGS"))
    (make-package "ARMOR_MSGS"))
  (shadow 'ArmorDirectiveReq (find-package "ARMOR_MSGS")))
(unless (find-package "ARMOR_MSGS::ARMORDIRECTIVEREQ")
  (make-package "ARMOR_MSGS::ARMORDIRECTIVEREQ"))

(in-package "ROS")
;;//! \htmlinclude ArmorDirectiveReq.msg.html


(defclass armor_msgs::ArmorDirectiveReq
  :super ros::object
  :slots (_client_name _reference_name _command _primary_command_spec _secondary_command_spec _args ))

(defmethod armor_msgs::ArmorDirectiveReq
  (:init
   (&key
    ((:client_name __client_name) "")
    ((:reference_name __reference_name) "")
    ((:command __command) "")
    ((:primary_command_spec __primary_command_spec) "")
    ((:secondary_command_spec __secondary_command_spec) "")
    ((:args __args) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _client_name (string __client_name))
   (setq _reference_name (string __reference_name))
   (setq _command (string __command))
   (setq _primary_command_spec (string __primary_command_spec))
   (setq _secondary_command_spec (string __secondary_command_spec))
   (setq _args __args)
   self)
  (:client_name
   (&optional __client_name)
   (if __client_name (setq _client_name __client_name)) _client_name)
  (:reference_name
   (&optional __reference_name)
   (if __reference_name (setq _reference_name __reference_name)) _reference_name)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:primary_command_spec
   (&optional __primary_command_spec)
   (if __primary_command_spec (setq _primary_command_spec __primary_command_spec)) _primary_command_spec)
  (:secondary_command_spec
   (&optional __secondary_command_spec)
   (if __secondary_command_spec (setq _secondary_command_spec __secondary_command_spec)) _secondary_command_spec)
  (:args
   (&optional __args)
   (if __args (setq _args __args)) _args)
  (:serialization-length
   ()
   (+
    ;; string _client_name
    4 (length _client_name)
    ;; string _reference_name
    4 (length _reference_name)
    ;; string _command
    4 (length _command)
    ;; string _primary_command_spec
    4 (length _primary_command_spec)
    ;; string _secondary_command_spec
    4 (length _secondary_command_spec)
    ;; string[] _args
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _args)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _client_name
       (write-long (length _client_name) s) (princ _client_name s)
     ;; string _reference_name
       (write-long (length _reference_name) s) (princ _reference_name s)
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; string _primary_command_spec
       (write-long (length _primary_command_spec) s) (princ _primary_command_spec s)
     ;; string _secondary_command_spec
       (write-long (length _secondary_command_spec) s) (princ _secondary_command_spec s)
     ;; string[] _args
     (write-long (length _args) s)
     (dolist (elem _args)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _client_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _client_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _reference_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reference_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _primary_command_spec
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _primary_command_spec (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _secondary_command_spec
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _secondary_command_spec (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _args
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _args (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _args i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get armor_msgs::ArmorDirectiveReq :md5sum-) "385184fa98c36b7f00729ae2078dfc92")
(setf (get armor_msgs::ArmorDirectiveReq :datatype-) "armor_msgs/ArmorDirectiveReq")
(setf (get armor_msgs::ArmorDirectiveReq :definition-)
      "string client_name
string reference_name
string command
string primary_command_spec
string secondary_command_spec
string[] args
")



(provide :armor_msgs/ArmorDirectiveReq "385184fa98c36b7f00729ae2078dfc92")


