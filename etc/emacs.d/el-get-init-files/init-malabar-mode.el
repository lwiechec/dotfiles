(add-to-list 'auto-mode-alist '("\\.java\\'" . malabar-mode))

; optional: simulate constant compile-after-save (as in Eclipse)
;(add-hook 'malabar-mode-hook
;     (lambda ()
;       (add-hook 'after-save-hook 'malabar-compile-file-silently
;                  nil t)))

; close compilation window if everything went well
; inspired by this discussion: http://www.emacswiki.org/emacs/ModeCompile
(defun compile-autoclose (buffer string)
  (with-selected-window (get-buffer-window buffer)
    (goto-char (point-max)))
  (cond ((string-match "finished" string)
	 (message "Build probably successful: closing window in 5 secs...")
	 (run-with-timer 5 nil
			 'delete-window
			 (get-buffer-window buffer t)))
	(t
	 (message "Compilation exited abnormally: %s" string))))
(setq compilation-finish-functions 'compile-autoclose)

; as the stock 'Run test via maven from malabar' does not work for me, here's a workaround
(defun my-malabar-run-test ()
  (interactive)
  "runs Maven test for current buffer. Does not perform check if the test is actually a test."
  (malabar-run-maven-command (concat "-Dtest=" (car (split-string (buffer-name (current-buffer)) ".java")) " test")))

(add-hook 'malabar-mode-hook  (lambda()
    (local-set-key [(f11)] 'javadoc-lookup)
    (local-set-key [(shift f11)] 'javadoc-help)
    (local-set-key (kbd "C-c C-v C-n") 'malabar-visit-corresponding-test)
    (local-set-key (kbd "C-c C-v T") 'my-malabar-run-test)))
