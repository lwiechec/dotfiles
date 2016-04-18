(require 'magit)
(if (fboundp 'magit-status)
    (global-set-key (kbd "<f7>") 'magit-status))
