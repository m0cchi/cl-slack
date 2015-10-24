(require 'cl-slack.core "./core.lisp")

(provide 'cl-slack.api)

(defpackage :cl-slack.api
  (:use :cl)
  (:import-from :cl-slack.core)
  (:export test))

(in-package :cl-slack.api)

(defmethod test ((client cl-slack.core:slack-client))
  (cl-slack.core:send "api.test" ""))
