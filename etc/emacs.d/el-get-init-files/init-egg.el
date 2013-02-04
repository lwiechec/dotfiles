;; Egg - Emacs got Git
;; Git
(progn
  (require 'egg)
  ;; override the VC settingmore sexy handling of buffer list
  (global-set-key (kbd "\C-x v d") 'egg-status)
  (global-set-key (kbd "\C-x v c") 'egg-commit-log-edit)
  (global-set-key (kbd "\C-x v i") 'egg-file-stage-current-file)
  (global-set-key (kbd "\C-x v l") 'egg-log)
  (global-set-key (kbd "\C-x v o") 'egg-file-checkout-other-version)
  (global-set-key (kbd "\C-x v u") 'egg-file-cancel-modifications)
  (global-set-key (kbd "\C-x v v") 'egg-next-action)
  (global-set-key (kbd "\C-x v =") 'egg-file-diff)
  (global-set-key (kbd "\C-x v ~") 'egg-file-version-other-window)
  (global-set-key (kbd "\C-x v b") 'egg-start-new-branch)
  (global-set-key (kbd "\C-x v a") 'egg-file-toggle-blame-mode)
)
