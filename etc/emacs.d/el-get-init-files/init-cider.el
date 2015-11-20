;;(require 'paredit)
(add-hook 'cider-mode-hook #'eldoc-mode)
;(setq nrepl-hide-special-buffers t)
(setq nrepl-buffer-name-show-port t)
;; Just save without prompting
(setq cider-prompt-save-file-on-load 'always-save)
;; always show the results of tests
(setq cider-test-show-report-on-success t)

(require 'eval-sexp-fu)
