(require 'perspective)
(persp-mode 1)
(require 'persp-projectile)
(define-key projectile-mode-map (kbd "s-s") 'projectile-persp-switch-project)
;; the persp takes too much space in the modeline, disabling
(setq persp-show-modestring nil)
(persp-turn-off-modestring)
