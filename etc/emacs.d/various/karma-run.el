;;; package --- Summary

; some off-my-head functions that should improve coding JS using Karma test runner.

;;; Commentary:


;;; Code:
;; fixing the color issues in the compilation buffer (as found on StackOverflow)
(ignore-errors
  (require 'ansi-color)
  (defun my-colorize-compilation-buffer ()
    (when (eq major-mode 'compilation-mode)
      (ansi-color-apply-on-region compilation-filter-start (point-max))))
  (defun my-remove-ansi-move-around-sequences ()
    "remove 'move around' ANSI sequences from the compilation buffer for better readability"
    (let ((ansi-move-around-regexp "\033\\[[0-9][A,K]*"))
      (replace-regexp ansi-move-around-regexp "" nil compilation-filter-start (point-max))))
  (add-hook 'compilation-filter-hook 'my-colorize-compilation-buffer)
  (add-hook 'compilation-filter-hook 'my-remove-ansi-move-around-sequences))


(defun lw/run-karma ()
  "run karma tests in compilation buffer."
  (interactive)
  (let ((test-config-file (read-file-name "Karma testing config file:"))
	(curr-buffer) (current-buffer))
    (compile (format "cd `dirname %s`; karma start %s" test-config-file test-config-file) t)
    (switch-to-buffer (get-buffer "*compilation*"))
    (rename-buffer (format "Karma tests: %s" test-config-file))
    (switch-to-buffer curr-buffer)
    )
  )

(provide 'karma-run)
