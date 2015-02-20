(add-hook 'after-init-hook (lambda ()
			     (require 'projectile)
			     ;; turn on projectile mode globally
			     (projectile-global-mode)
			     ;; autoload helm-projectile integration (for some reason, it doesn't load automatically)
			     (autoload 'helm-projectile "helm-projectile" nil t)
			     ;; well, helm is the best!
			     (require 'helm)
			     (setq projectile-completion-system 'helm)))
