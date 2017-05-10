(in-package :cl-slack.channels)

(defmethod archive ((client  cl-slack.core:slack-client)
                    (channel string))
  (cl-slack.core:send "channels.archive"
                      (format nil "?token=~A&channel=~A"
                              (cl-slack.core:token client)
                              channel)))

(defmethod create ((client  cl-slack.core:slack-client)
                   (name string)
                   (optionals cl:list))
  (cl-slack.core:send "channels.create"
                      (format nil "?token=~A&name=~A~A"
                              (cl-slack.core:token client)
                              name
                              (cl-slack.core:to-param optionals))))

(defmethod info ((client  cl-slack.core:slack-client)
                 (channel string))
  (cl-slack.core:send "channels.info"
                      (format nil "?token=~A&channel=~A"
                              (cl-slack.core:token client)
                              channel)))

(defmethod invite ((client  cl-slack.core:slack-client)
                   (channel string)
                   (user string))
  (cl-slack.core:send "channels.invite"
                      (format nil "?token=~A&channel=~A&user=~A"
                              (cl-slack.core:token client)
                              channel
                              user)))

(defmethod join ((client  cl-slack.core:slack-client)
                 (name string)
                 (optionals cl:list))
  (cl-slack.core:send "channels.join"
                      (format nil "?token=~A&name=~A~A"
                              (cl-slack.core:token client)
                              name
                              (cl-slack.core:to-param optionals))))

(defmethod kick ((client  cl-slack.core:slack-client)
                 (channel string)
                 (user string))
  (cl-slack.core:send "channels.kick"
                      (format nil "?token=~A&channel=~A&user=~A"
                              (cl-slack.core:token client)
                              channel
                              user)))

(defmethod leave ((client  cl-slack.core:slack-client)
                 (channel string))
  (cl-slack.core:send "channels.leave"
                      (format nil "?token=~A&channel=~A"
                              (cl-slack.core:token client)
                              channel)))

(defmethod mark ((client  cl-slack.core:slack-client)
                 (channel string)
                 (ts string))
  (cl-slack.core:send "channels.mark"
                      (format nil "?token=~A&channel=~A&ts=~A"
                              (cl-slack.core:token client)
                              channel
                              ts)))

(defmethod rename ((client  cl-slack.core:slack-client)
                   (channel string)
                   (name string)
                   (optionals cl:list))
  (cl-slack.core:send "channels.rename"
                      (format nil "?token=~A&channel=~A&name=~A~A"
                              (cl-slack.core:token client)
                              channel
                              name
                              (cl-slack.core:to-param optionals))))

(defmethod replies ((client  cl-slack.core:slack-client)
                    (channel string)
                    (thread-ts string))
  (cl-slack.core:send "channels.replies"
                      (format nil "?token=~A&channel=~A&thread_ts=~A"
                              (cl-slack.core:token client)
                              channel
                              thread-ts)))

(defmethod set-purpose ((client  cl-slack.core:slack-client)
                        (channel string)
                        (purpose string))
  (cl-slack.core:send "channels.setPurpose"
                      (format nil "?token=~A&channel=~A&purpose=~A"
                              (cl-slack.core:token client)
                              channel
                              purpose)))

(defmethod set-topic ((client  cl-slack.core:slack-client)
                      (channel string)
                      (topic string))
  (cl-slack.core:send "channels.setTopic"
                      (format nil "?token=~A&channel=~A&topic=~A"
                              (cl-slack.core:token client)
                              channel

                              topic)))
(defmethod unarchive ((client  cl-slack.core:slack-client)
                      (channel string))
  (cl-slack.core:send "channels.unarchive"
                      (format nil "?token=~A&channel=~A"
                              (cl-slack.core:token client)
                              channel)))

(defmethod history ((client cl-slack.core:slack-client)
                    (channel string)
                    (optionals cl:list))
  (cl-slack.core:send "channels.history"
                      (format nil "?token=~A&channel=~A~A"
                              (cl-slack.core:token client)
                              channel
                              (cl-slack.core:to-param optionals))))

(defmethod list ((client cl-slack.core:slack-client)
                 (optionals cl:list))
  (cl-slack.core:send "channels.list"
                      (format nil "?token=~A~A"
                              (cl-slack.core:token client)
                              (cl-slack.core:to-param optionals))))

