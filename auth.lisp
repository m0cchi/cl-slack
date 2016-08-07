(in-package :cl-slack.auth)

(defmethod test ((client cl-slack.core:slack-client))
  (cl-slack.core:send "api.test" (format nil "?token=~A" (cl-slack.core:token client))))
