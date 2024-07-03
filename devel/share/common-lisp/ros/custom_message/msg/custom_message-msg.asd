
(cl:in-package :asdf)

(defsystem "custom_message-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "angles" :depends-on ("_package_angles"))
    (:file "_package_angles" :depends-on ("_package"))
  ))