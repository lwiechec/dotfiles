;;; package --- Summary

;;; Commentary:

;;; this code should init the perspective package, together with persp-projectile

(require 'perspective)
(require 'persp-projectile)

;;; Code:
(persp-mode 1)

(define-key projectile-mode-map (kbd "s-s") 'projectile-persp-switch-project)
