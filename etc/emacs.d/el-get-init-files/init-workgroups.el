;; workgroups.el - manage window configuration in the frame the eas way
;; https://github.com/tlh/workgroups.el

(setq wg-prefix-key (kbd "C-c w"))
(setq wg-file "~/.emacs.d/workgroups-saved")
(workgroups-mode 1)

(if (file-exists-p wg-file)
    (wg-load (expand-file-name wg-file))
)
