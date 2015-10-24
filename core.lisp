(provide 'cl-slack.core)

(defpackage :cl-slack.core
  (:use :cl)
  (:export slack-client send))

(in-package :cl-slack.core)

(defvar BASE_URL "https://slack.com/api/")

(defclass slack-client ()
  ((token :accessor token :initarg :registers)))

(defun send (api-name param)
  (dex:get (format nil "~A~A~A" BASE_URL api-name param)))
