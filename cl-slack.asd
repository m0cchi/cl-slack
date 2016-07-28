;;;; cl-slack.asd

(asdf:defsystem #:cl-slack
  :description "Common Lisp Slack API Library"
  :author "m0cchi"
  :license "Specify license here"
  :depends-on (#:dexador)
  :serial t
  :components ((:file "package")
               (:file "cl-slack")
               (:file "core")
               (:file "auth")
               (:file "rtm")
               (:file "chat")
               (:file "team")
               (:file "pins")
               (:file "api")
               (:file "reactions")))
