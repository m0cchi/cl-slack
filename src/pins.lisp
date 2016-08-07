(in-package :cl-slack.pins)

(defmethod add ((client cl-slack.core:slack-client)
                (channel string)
                (optionals list))
  (cl-slack.core:send "pins.add"
                      (format nil "?token=~A&channel=~A~A"
                              (cl-slack.core:token client)
                              channel
                              (cl-slack.core:to-param optionals))))

(defmethod fetch-list ((client cl-slack.core:slack-client)
                      (channel string))
  (cl-slack.core:send "pins.list"
                      (format nil "?token=~A&channel=~A"
                              (cl-slack.core:token client)
                              channel)))

(defmethod remove-pin ((client cl-slack.core:slack-client)
                       (channel string)
                       (optionals list))
  (cl-slack.core:send "pins.remove"
                      (format nil "?token=~A&channel=~A~A"
                              (cl-slack.core:token client)
                              channel
                              (cl-slack.core:to-param optionals))))
