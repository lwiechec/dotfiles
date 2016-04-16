(require 'projectile)
;; turn on projectile mode globally
(projectile-global-mode)
;; autoload helm-projectile integration (for some reason, it doesn't load automatically)
(autoload 'helm-projectile "helm-projectile" nil t)
;; well, helm is the best!
(require 'helm)
(setq projectile-completion-system 'helm)
(require 'perspective)
(persp-mode 1)
;;(require 'projectile-persp)
;;(define-key projectile-mode-map (kbd "s-s") 'projectile-persp-switch-project)
;; the persp takes too much space in the modeline, disabling
(setq persp-show-modestring nil)
(persp-turn-off-modestring)

;; use native method (suggested for NOT windows)
(setq projectile-indexing-method 'native)
;; enable caching
(setq projectile-enable-caching t)
(setq projectile-create-missing-test-files t)
(setq projectile-switch-project-action
      #'projectile-commander)

(def-projectile-commander-method ?s
  "Open a *shell* buffer for the project."
  (shell (get-buffer-create
          (format "*shell %s*"
                  (projectile-project-name)))))

(def-projectile-commander-method ?c
  "Run `compile' in the project."
  (call-interactively #'compile))
(def-projectile-commander-method ?\C-?
  "Go back to project selection."
  (projectile-switch-project))
(def-projectile-commander-method ?d
  "Open project root in dired."
  (projectile-dired))
(message "Projectile initialized.")
