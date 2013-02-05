;; workgroups.el - manage window configuration in the frame the eas way
;; https://github.com/tlh/workgroups.el

(setq wg-prefix-key (kbd "C-c w"))
(workgroups-mode 1)
(if (file-exists-p "~/.emacs.d/workgroups-saved")
    (wg-load (expand-file-name "~/.emacs.d/workgroups-saved"))
)
