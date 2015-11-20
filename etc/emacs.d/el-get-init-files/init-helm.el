(add-hook 'after-init-hook (lambda ()
			     (require 'helm)
			     (require 'helm-misc)
			     (require 'helm-config)
			     ;; I like helm-buffers-list better than Electric version so...
			     (global-set-key (kbd "\C-x \C-b") 'helm-buffers-list)
			     (global-set-key (kbd "C-x b") 'helm-mini)
			     (global-set-key (kbd "C-c h m") 'helm-man-woman)
			     (global-set-key (kbd "C-c h o") 'helm-occur)
			     ;; I also like Helm's version of find-files
			     (global-set-key (kbd "C-x C-f") 'helm-find-files)

			     ;; kill ring in Helm - cool!
			     (require 'helm-ring)
			     (global-set-key (kbd "C-x C-z") 'helm-show-kill-ring)

			     (global-set-key (kbd "C-c h") 'helm-command-prefix)
			     (define-key helm-map (kbd "C-z") 'helm-select-action)
			     (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

			     ;; global helm mode
			     (require 'helm-mode)
			     (helm-mode 1)

			     ;; some customization
			     (setq helm-split-window-in-side-p t
				   helm-move-to-line-cycle-in-source t
				   helm-scroll-amount 8
				   helm-ff-file-name-history-use-recentf t)

			     (when (executable-find "curl")
			       (setq helm-google-suggest-use-curl-p t))

			     ;; this will make the list buffers window show the buffers sorted on 'last accessed' ones
			     ;; as seen in http://www.reddit.com/r/emacs/comments/2jzkz7/quickly_switch_to_previous_buffer
			     (defun helm-buffers-list ()
			       "Preconfigured `helm' to list buffers."
			       (interactive)
			       (helm :sources '(helm-source-buffers-list
						helm-source-ido-virtual-buffers
						helm-source-buffer-not-found)
				     :buffer "*helm buffers*"
				     :keymap helm-buffer-map
				     :truncate-lines t
				     :preselect (buffer-name (other-buffer (current-buffer) 1))))
			     ))
