;; yasnippet - cool gadget for quick coding
(require 'yasnippet)
(setq yas/root-directory '("~/.emacs.d/my-yasnippets"))
(mapc 'yas/load-directory yas/root-directory)
(yas/global-mode 't)
