
(cl:in-package :asdf)

(defsystem "armor_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ArmorDirectiveReq" :depends-on ("_package_ArmorDirectiveReq"))
    (:file "_package_ArmorDirectiveReq" :depends-on ("_package"))
    (:file "ArmorDirectiveRes" :depends-on ("_package_ArmorDirectiveRes"))
    (:file "_package_ArmorDirectiveRes" :depends-on ("_package"))
    (:file "QueryItem" :depends-on ("_package_QueryItem"))
    (:file "_package_QueryItem" :depends-on ("_package"))
  ))