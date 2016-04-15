; initialization for mu4e mail client

(require 'mu4e)

;; global setting
(global-set-key (kbd "<f6>") 'mu4e)

(setq mu4e-maildir "~/Maildir")

;; fixning duplicate UID errors when using mbsync
(setq mu4e-change-filenames-when-moving t)

;; note that the the ID of the account needs to match the directory under the ~/Maildir
(setq my-mu4e-account-alist
  '(("Mail-NU"
     (mu4e-sent-folder    "/Mail-NU/Sent")
     (mu4e-drafts-folder  "/Mail-NU/Drafts")
     (mu4e-trash-folder   "/Mail-NU/Trash")
     (smtpmail-smtp-server "localhost")
     (smtpmail-smtp-service 1025)
     (message-send-mail-function smtpmail-send-it)
     (user-mail-address "Lukasz.Wiechec@nu.nc3a.nato.int")
     (mu4e-compose-reply-to-address "Lukasz.Wiechec@nc3a.nato.int")
     (smtpmail-starttls-credentials nil)
     (smtpmail-auth-credentials
      '(("localhost" 1025 "nc3a\\wiechec" nil)))
     (smtpmail-stream-type nil)
     (user-full-name "Łukasz Wiecheć")
     (message-signature "Łukasz Wiecheć\nNCIA\n")
     )
    ("Mail-wiechec.eu"
     (mu4e-drafts-folder "/Mail-wiechec.eu/Modelos")
     (mu4e-sent-folder   "/Mail-wiechec.eu/Enviado")
     (mu4e-trash-folder  "/Mail-wiechec.eu/Caixote do Lixo")
     (mu4e-sent-messages-behavior sent)
     (user-mail-address "lukasz@wiechec.eu")
     (mu4e-compose-reply-to-address nil)
     (user-full-name "Łukasz Wiecheć")
     (message-signature "Łukasz Wiecheć")
     (smtpmail-starttls-credentials '(("smtp.zoho.com" 587 "lukasz.wiechec" nil)))
     (smtpmail-auth-credentials
      '(("smtp.zoho.com" 587 "lukasz.wiechec" nil)))
     (message-send-mail-function smtpmail-send-it)
     (smtpmail-stream-type starttls)
     (smtpmail-default-smtp-server "smtp.zoho.com")
     (smtpmail-smtp-server "smtp.zoho.com")
     (smtpmail-smtp-service 587)
     )
    ))

;; funtion to select the correct mail account.
(defun my-mu4e-set-account ()
  "Set the account for composing a message."
  (let* ((account
          (if mu4e-compose-parent-message
              (let ((maildir (mu4e-message-field mu4e-compose-parent-message :maildir)))
                (string-match "/\\(.*?\\)/" maildir)
                (match-string 1 maildir))
            (completing-read (format "Compose with account: (%s) "
                                     (mapconcat #'(lambda (var) (car var))
                                                my-mu4e-account-alist "/"))
                             (mapcar #'(lambda (var) (car var)) my-mu4e-account-alist)
                             nil t nil nil (caar my-mu4e-account-alist))))
         (account-vars (cdr (assoc account my-mu4e-account-alist))))
    (if account-vars
        (mapc #'(lambda (var)
                  (set (car var) (cadr var)))
              account-vars)
      (error "No email account found"))))

(add-hook 'mu4e-compose-pre-hook 'my-mu4e-set-account)


;; make possible fetching mail from multiple addresses
(setq my-mu4e-get-mail-commands-alist
      '(("wiechec.eu"
         "mbsync -C -V personal-wiechec.eu")
        ("work"
         "mbsync -C -V work")))

(defun my-mu4e-set-get-mail-command ()
  "Set the command for getting the mail."
  (let* ((account
          (completing-read (format "Get mail for account: (%s) "
                                   (mapconcat #'(lambda (var) (car var))
                                               my-mu4e-get-mail-commands-alist "/"))
                           (mapcar #'(lambda (var) (car var)) my-mu4e-get-mail-commands-alist)
                           nil t nil nil (caar my-mu4e-get-mail-commands-alist)))
         (my-get-mail-command (cdr (assoc account my-mu4e-get-mail-commands-alist))))
    (if my-get-mail-command
        (setq mu4e-get-mail-command (car my-get-mail-command))
      (error "No email account found."))))

(add-hook 'mu4e-update-pre-hook 'my-mu4e-set-get-mail-command)

;; setup some handy shortcuts
(setq mu4e-maildir-shortcuts
      '(("/Mail-NU/INBOX"           . ?i)
        ("/Mail-NU/INBOX.Sent Mail" . ?s)
        ("/Mail-NU/Trash"           . ?t)
        ("/Mail-wiechec.eu/INBOX"   . ?I)
        ("/Mail-wiechec.eu/Enviado" . ?E)
        ("/Mail-wiechec.eu/Caixote do Lixo" . ?t)))

;; how to get mail
(setq mu4e-get-mail-command "offlineimap"
      mu4e-update-interval  600)  ; every 10 minutes

;; how to send email
;; we are using native emacs' SMTP mail handling
;; authentication data can be found in ~/.authinfo (for details see Info page)
(require 'smtpmail)
; use authentication file (see https://gist.github.com/areina/3879626)
(setq smtpmail-auth-credentials
      (expand-file-name "~/.authinfo"))

;; something about ourselves
;; (setq
;;  user-mail-address "Lukasz.Wiechec@nc3a.nato.int"
;;  user-full-name "Łukasz Wiecheć"
;;  message-signature
;;  (concat
;;   "Łukasz Wiecheć\n"
;;   "NCIA\n"))

;; where to save the attachments
(setq mu4e-attachment-dir "~/Downloads")

;; HTML handling
(setq mu4e-view-prefer-html t)
; will be using external utility to convert html to text (it's better than Emac's native one)
;;(setq mu4e-html2text-command "html2text -utf8 -width 72")

;; better rendering of HTML messages using eww
(defun lw/render-html-message ()
  (let ((dom (libxml-parse-html-region (point-min) (point-max))))
    (erase-buffer)
    (shr-insert-document dom)
    (goto-char (point-min))))

(setq mu4e-html2text-command 'lw/render-html-message)

;; user mu4e as a default user agent for sending emails from emacs (C-x m)
(setq mail-user-agent 'mu4e-user-agent)

;; view inline images
(setq mu4e-view-show-images t)
(when (fboundp 'imagemagick-register-types)
  (imagemagick-register-types))

;; add bookmark to Nagios messages
(add-to-list 'mu4e-bookmarks '("to:lukasz.wiechec+nagios" "NAGIOS notifications" ?n))
(add-to-list 'mu4e-bookmarks '("from:allianzworldwidecare.com" "Allianz claims" ?a))

;; different date format
(setq mu4e-date-format-long "%D")
(setq mu4e-time-format "%T") ; not sure about that one

;; use mu-cite
;; (require 'mu-cite)
;; (setq message-cite-function 'mu-cite-original)
;; (setq mu-cite-top-format
;;      '("On " date ", " from " wrote:\n\n"))
;; (setq mu-cite-prefix-format '(" > "))

;; sample biff for Maildir mailbox.
(make-face 'my-mail-face)
(set-face-attribute 'my-mail-face nil
		    :inherit 'mode-line :foreground "black" :background "white")

(defvar my-mail-icon
  (find-image '((:type xpm :file "letter.xpm" :ascent center)
		(:type pbm :file "letter.pbm" :ascent center))))

(defvar my-have-mail-p nil)

(defun my-check-mail()
  "check if there are some files in maildir's '/new' subdrectory."
  (catch 'have-mail
    (dolist (folder
	     (file-expand-wildcards "~/Maildir/Mail-NU/INBOX/new")
	     (throw 'have-mail nil))
      (if (not (or (string= folder "~/Maildir/Trash/new")
		   (= (length (directory-files folder nil "[^.].*" t)) 0)))
	  (throw 'have-mail t)))))

(defun my-check-mail-timer()
  "'Timer' that will check the mail."
  (setq my-have-mail-p (my-check-mail))
  (if my-have-mail-p
      (run-at-time "5 sec" nil 'my-check-mail-timer)
    (run-at-time "60 sec" nil 'my-check-mail-timer)))

(my-check-mail-timer)
(add-to-list 'global-mode-string
	     '(:eval (propertize (if my-have-mail-p " ^| " "")
				 'face 'my-mail-face 'display my-mail-icon)))


;; display-time-mode mail notification
;; (defface display-time-mail-face '((t (:background "red")))
;;   "If display-time-use-mail-icon is non-nil, its background colour is that
;;       of this face. Should be distinct from mode-line. Note that this does not seem
;;       to affect display-time-mail-string as claimed.")
;; (setq
;;  display-time-mail-directory "~/Maildir/Mail-NU/INBOX/"
;;  display-time-use-mail-icon t
;;  display-time-mail-face 'display-time-mail-face)

;; this is a requirement for mu4e
(setenv "GPG_AGENT_INFO" "/usr/bin/gpg-agent")

;; add action for retagging a message
(add-to-list 'mu4e-view-actions
             '("retag message" . mu4e-action-retag-message) t)
(add-to-list 'mu4e-headers-actions
             '("retag message" . mu4e-action-retag-message) t)
(add-to-list 'mu4e-view-actions
             '("ViewInBrowser" . mu4e-action-view-in-browser) t)


;; I don't want auto-check for mail; will do it by hand
(setq mu4e-update-interval nil)
