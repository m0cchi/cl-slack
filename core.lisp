(provide 'cl-slack.core)

(defpackage :cl-slack.core
  (:use :cl)
  (:export slack-client send token to-param))

(in-package :cl-slack.core)

(defvar BASE_URL "https://slack.com/api/")

(defclass slack-client ()
  ((token :accessor token :initarg :token)))

(defun send (api-name param)
  (dex:get (format nil "~A~A~A" BASE_URL api-name param)))

(defun to-param (list)
  (or (format nil "~{&~A=~A~}" list)
      ""))
