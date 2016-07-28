(in-package :cl-slack.team)

(defmethod fetch-access-logs ((client cl-slack.core:slack-client)
                              (optionals list))
  (cl-slack.core:send "team.accessLogs"
                      (format nil "?token=~A~A"
                              (cl-slack.core:token client)
                              (cl-slack.core:to-param optionals))))

(defmethod fetch-info ((client cl-slack.core:slack-client))
  (cl-slack.core:send "team.info"
                      (format nil "?token=~A"
                              (cl-slack.core:token client))))
