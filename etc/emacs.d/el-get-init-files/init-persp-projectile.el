(require 'perspective)
(persp-mode 1)
(require 'persp-projectile)
(define-key projectile-mode-map (kbd "s-s") 'projectile-persp-switch-project)
