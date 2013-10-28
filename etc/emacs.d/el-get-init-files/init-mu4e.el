; initialization for mu4e mail client

(require 'mu4e)

; mailboxes for NU account
(setq mu4e-maildir        "~/Mail-NU"
      mu4e-sent-folder    "/Sent"
      mu4e-drafts-folder  "/Drafts"
      mu4e-trash-folder   "/Trash"
      mu4e-refile-folder  "/Archive")

; how to get mail
(setq mu4e-get-mail-command "offlineimap"
      mu4e-update-interval  300)  ; every w minutes

; how to send email
; we are using native emacs' SMTP mail handling
; authentication data can be found in ~/.authinfo (for details see Info page)
(setq smtpmail-smtp-server "localhost")
(setq smtpmail-smtp-service 1025)
(setq message-send-mail-function 'smtpmail-send-it)

;; something about ourselves
(setq
 user-mail-address "Lukasz.Wiechec@ncia.nato.int"
 user-full-name "Łukasz Wiecheć"
 message-signature
 (concat
  "Łukasz Wiecheć\n"
  "NCIA\n"))

; where to save the attachments
(setq mu4e-attachment-dir "~/Downloads")

; HTML handling
(setq mu4e-view-prefer-html t)
; will be using external utility to convert html to text (it's better than Emac's native one)
(setq mu4e-html2text-command "html2text -utf8 -width 72")

; user mu4e as a default user agent for sending emails from emacs (C-x m)
(setq mail-user-agent 'mu4e-user-agent)

; view inline images
(setq mu4e-view-show-images t)
(when (fboundp 'imagemagick-register-types)
  (imagemagick-register-types))

; add bookmark to Nagios messages
(add-to-list 'mu4e-bookmarks '("to:lukasz.wiechec+nagios" "NAGIOS notifications" ?n))
(add-to-list 'mu4e-bookmarks '("from:allianzworldwidecare.com" "Allianz claims" ?a))

; different date format
(setq mu4e-date-format-long "%D")
(setq mu4e-time-format "%T") ; not sure about that one

; use mu-cite
;(require 'mu-cite)
;(setq message-cite-function 'mu-cite-original)
;(setq mu-cite-top-format
      '("On " date ", " from " wrote:\n\n"))
;(setq mu-cite-prefix-format '(" > "))
