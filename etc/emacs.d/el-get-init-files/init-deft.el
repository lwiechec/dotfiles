(when (require 'deft nil 'noerror)
   (setq
      deft-extension "org"
      deft-directory "~/Dropbox/org/deft/"
      deft-text-mode 'org-mode
      deft-auto-save-interval 5.0)
   (global-set-key (kbd "<f9>") 'deft))
