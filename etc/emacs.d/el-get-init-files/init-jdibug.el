(require 'jdibug)
(setq jdibug-connect-hosts '("localhost:4000" "localhost:5005"))

;; set the key bindings for my Java modes
(define-key java-mode-map (kbd "C-c d b") 'jdibug-breakpoints-toggle)
(define-key java-mode-map (kbd "C-c d n") 'jdibug-step-over)
(define-key java-mode-map (kbd "C-c d i") 'jdibug-step-into)
(define-key java-mode-map (kbd "C-c d o") 'jdibug-step-out)
(define-key java-mode-map (kbd "C-c d r") 'jdibug-resume)
