;;;; cl-slack.asd
(in-package :cl-user)

(defpackage :cl-slack-asd
  (:use :cl :asdf))
(in-package :cl-slack-asd)

(asdf:defsystem #:cl-slack
  :description "Common Lisp Slack API Library"
  :author "m0cchi"
  :license "Specify license here"
  :depends-on (#:dexador)
  :serial t
  :components ((:module "src"
                        :components
                        ((:file "package")
                         (:file "cl-slack")
                         (:file "core")
                         (:file "auth")
                         (:file "rtm")
                         (:file "chat")
                         (:file "team")
                         (:file "pins")
                         (:file "api")
                         (:file "reactions")))))
