(require 'slime-autoloads)

(eval-after-load "slime"
  '(progn
     (slime-setup '(slime-banner slime-fancy))
     (setq slime-complete-symbol*-fancy t)
     (setq slime-complete-symbol-function 'slime-fuzzy-complete-symbol)))

; i'm using sbcl for my lisp
(setq inferior-lisp-program "sbcl")
