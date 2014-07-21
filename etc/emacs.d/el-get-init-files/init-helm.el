;; I like helm-buffers-list better than Electric version so...
(global-set-key (kbd "\C-x \C-b") 'helm-buffers-list)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-c h m") 'helm-man-woman)
(global-set-key (kbd "C-c h o") 'helm-occur)
;; I also like Helm's version of find-files
(global-set-key (kbd "C-x C-f") 'helm-find-files)

; kill ring in Helm - cool!
(require 'helm-ring)
(global-set-key (kbd "C-x C-z") 'helm-show-kill-ring)

;; global helm mode
(helm-mode 1)
