;; turn on company-mode globally
(add-hook 'after-init-hook 'global-company-mode)

;; delay for company-mode to start completing - nil means no idle completion
(setq company-idle-delay nil)

;; bind globally
(global-set-key (kbd "<C-tab>") 'company-complete)
