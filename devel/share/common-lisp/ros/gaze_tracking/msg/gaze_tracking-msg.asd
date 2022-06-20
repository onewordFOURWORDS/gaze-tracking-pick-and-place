
(cl:in-package :asdf)

(defsystem "gaze_tracking-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "gazedata" :depends-on ("_package_gazedata"))
    (:file "_package_gazedata" :depends-on ("_package"))
  ))