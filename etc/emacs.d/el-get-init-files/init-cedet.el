;; using custom version of CEDET
;; enable EDE (Project Management) features
(global-ede-mode 1)
;; * This enables the database and idle reparse engines
(semantic-load-enable-minimum-features)
;(semantic-load-enable-code-helpers)
; this will display all posibilities for completion for us to choose
;(global-semantic-idle-completions-mode)

; highlight current function
(global-semantic-highlight-func-mode)

; set some handy key bindings
(add-hook 'semantic-idle-completions-mode-hook (lambda ()
  (local-set-key (kbd "C-c s \t") 'senator-completion-menu-popup)))
