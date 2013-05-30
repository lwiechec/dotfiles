;; workgroups.el - manage window configuration in the frame the eas way
;; https://github.com/tlh/workgroups.el

(setq wg-prefix-key (kbd "C-c w"))
(setq wg-file "~/.emacs.d/workgroups-saved")
(workgroups-mode 1)

; morph is cool but slow
(setq wg-morph-on nil)

(if (file-exists-p wg-file)
    (wg-load (expand-file-name wg-file))
)
