; my simple extensions to the popwin
(require 'popwin)

(setq display-buffer-function 'popwin:display-buffer)

; prefix to popwin's keymap
(global-set-key (kbd "C-z") popwin:keymap)

; for example, I like popwin-term package: it works better than 'shell-pop'
; (ie. not changing the working directory to the one of the buffer I am editing)
; let's declare something similar but using 'shell', not 'term' as I have problems
; with colors in 'term'

(defun popwin-shell:shell ()
  (interactive)
  (popwin:display-buffer-1
   (or (get-buffer "*shell*")
       (save-window-excursion
         (call-interactively 'shell)))
   :default-config-keywords '(:position :top)))

; add a handy key shortcut
(define-key popwin:keymap "`" 'popwin-shell:shell)

(provide 'popwin-shell)

; add other buffers to the list of ones managed by popwin. This includes
; for example Malabar compilation etc
(push '("*Malabar Compilation*" :height 20)  popwin:special-display-config)

; adding also code to make browsing the kill ring work with popup.el
(defun popwin-bkr:update-window-reference ()
  (popwin:update-window-reference 'browse-kill-ring-original-window :safe t))

(add-hook 'popwin:after-popup-hook 'popwin-bkr:update-window-reference)
(push "*Kill Ring*" popwin:special-display-config)

; add ack window as well
(push "*ack*" popwin:special-display-config)

; popup window from nrepl.el
(push '("*nrepl-result*" :noselect t) popwin:special-display-config)
