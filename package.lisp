;;;; package.lisp

(defpackage #:cl-slack
  (:use #:cl #:dexador))

(defpackage :cl-slack.core
  (:use :cl)
  (:export slack-client send token to-param))

(defpackage :cl-slack.api
  (:use :cl)
  (:import-from :cl-slack.core)
  (:export test))

(defpackage :cl-slack.auth
  (:use :cl)
  (:export test))

(defpackage :cl-slack.chat
  (:use :cl)
  (:export delete-message post-message update-message))

(defpackage :cl-slack.pins
  (:use :cl)
  (:export add fetch-list remove-pin))

(defpackage :cl-slack.reactions
  (:use :cl)
  (:export add get-item fetch-list remove-reaction))

(defpackage :cl-slack.rtm
  (:use :cl)
  (:export start))

(defpackage :cl-slack.team
  (:use :cl)
  (:export fetch-info fetch-access-logs))
