(in-package :cl-slack.reactions)

(defmethod add ((client cl-slack.core:slack-client)
                (name string)
                (optionals list))
  (cl-slack.core:send "reactions.add"
                      (format nil "?token=~A&name=~A~A"
                              (cl-slack.core:token client)
                              name
                              (cl-slack.core:to-param optionals))))

(defmethod get-item ((client cl-slack.core:slack-client)
                     (optionals list))
  (cl-slack.core:send "reactions.add"
                      (format nil "?token=~A~A"
                              (cl-slack.core:token client)
                              (cl-slack.core:to-param optionals))))

(defmethod fetch-list ((client cl-slack.core:slack-client)
                       (optionals list))
  (cl-slack.core:send "reactions.list"
                      (format nil "?token=~A~A"
                              (cl-slack.core:token client)
                              (cl-slack.core:to-param optionals))))

(defmethod remove-reaction ((client cl-slack.core:slack-client)
                            (name string)
                            (optionals list))
  (cl-slack.core:send "reactions.remove"
                      (format nil "?token=~A&name=~A~A"
                              (cl-slack.core:token client)
                              name
                              (cl-slack.core:to-param optionals))))
