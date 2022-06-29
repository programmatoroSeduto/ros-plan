
(cl:in-package :asdf)

(defsystem "smach_tutorials-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "TestAction" :depends-on ("_package_TestAction"))
    (:file "_package_TestAction" :depends-on ("_package"))
    (:file "TestActionFeedback" :depends-on ("_package_TestActionFeedback"))
    (:file "_package_TestActionFeedback" :depends-on ("_package"))
    (:file "TestActionGoal" :depends-on ("_package_TestActionGoal"))
    (:file "_package_TestActionGoal" :depends-on ("_package"))
    (:file "TestActionResult" :depends-on ("_package_TestActionResult"))
    (:file "_package_TestActionResult" :depends-on ("_package"))
    (:file "TestFeedback" :depends-on ("_package_TestFeedback"))
    (:file "_package_TestFeedback" :depends-on ("_package"))
    (:file "TestGoal" :depends-on ("_package_TestGoal"))
    (:file "_package_TestGoal" :depends-on ("_package"))
    (:file "TestResult" :depends-on ("_package_TestResult"))
    (:file "_package_TestResult" :depends-on ("_package"))
  ))