
(cl:in-package :asdf)

(defsystem "Robotics_Report2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Blob_Params" :depends-on ("_package_Blob_Params"))
    (:file "_package_Blob_Params" :depends-on ("_package"))
    (:file "Blobs" :depends-on ("_package_Blobs"))
    (:file "_package_Blobs" :depends-on ("_package"))
  ))