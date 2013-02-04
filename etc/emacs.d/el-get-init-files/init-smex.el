;; smex - more intelligent M-x
(setq smex-save-file "~/.emacs.d/smex.save")
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-X") 'smex)
