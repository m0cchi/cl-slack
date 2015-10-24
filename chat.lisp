(provide 'cl-slack.chat)

(defpackage :cl-slack.chat
  (:use :cl)
  (:export delete-message post-message update-message))

(in-package :cl-slack.chat)

(defmethod delete-message ((client cl-slack.core:slack-client)
                           (ts string)
                           (channel string))
  (cl-slack.core:send "chat.delete"
                      (format nil "?token=~A&ts=~A&channel=~A"
                              (cl-slack.core:token client)
                              ts
                              channel)))

(defmethod post-message ((client cl-slack.core:slack-client)
                         (channel string)
                         (text string)
                         (optionals list))
  (cl-slack.core:send "chat.postMessage"
                      (format nil "?token=~A&channel=~A&text=~A~A"
                              (cl-slack.core:token client)
                              channel
                              text
                              (cl-slack.core:to-param optionals))))

(defmethod update-message ((client cl-slack.core:slack-client)
                           (ts string)
                           (channel string)
                           (text string)
                           (optionals list))
  (cl-slack.core:send "chat.update"
                      (format nil "?token=~A&ts=~A&channel=~A&text=~A"
                              (cl-slack.core:token client)
                              ts
                              channel
                              text
                              (cl-slack.core:to-param optionals))))
