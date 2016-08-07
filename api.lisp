(in-package :cl-slack.api)

(defmethod test ((client cl-slack.core:slack-client))
  (cl-slack.core:send "api.test" ""))
