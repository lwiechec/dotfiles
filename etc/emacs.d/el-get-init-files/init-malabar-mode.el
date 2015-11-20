;(add-hook 'after-init-hook
	  (lambda ()
	    (require 's)
	    (require 'flycheck)
	    (message "activate-malabar-mode")
	    ;;(add-hook 'malabar-java-mode-hook 'flycheck-mode)
	    ;;(add-hook 'malabar-groovy-mode-hook 'flycheck-mode)
	    (activate-malabar-mode)
	    (require 'inf-groovy)
	    ;(run-groovy (concat groovy-home "/bin/" groovy-program-name))
	    (malabar-run-groovy)
	    )
;)

; optional: simulate constant compile-after-save (as in Eclipse)
;(add-hook 'malabar-mode-hook
					;     (lambda ()
;       (add-hook 'after-save-hook 'malabar-compile-file-silently
;                  nil t)))

; close compilation window if everything went well
; inspired by this discussion: http://www.emacswiki.org/emacs/ModeCompile
;
; UPDATE: I am not 100% happy with that solution. The command closes the window, even if I switch to other buffer
;         in that window. Better solution would be to check if the window contain the original (compilation) buffer
;         before closing. That's why my-delete-window-if-buffer-still-there comes in
(defun my-delete-window-if-buffer-still-there (window buffer)
  "delete WINDOW only if BUFFER is in there"
  (if (eq (get-buffer-window buffer) window) (delete-window window)))

(defun compile-autoclose (buffer string)
  "BUFFER is compilation buffer; STRING describes how compilation finished"
  ; skip the *grep* buffer(s)
  (unless (string= (buffer-name (current-buffer)) "*grep*")
    (with-selected-window (get-buffer-window buffer)
      (goto-char (point-max)))
    (cond ((string-match "finished" string)
	   (message "Build (probably) successful: closing window in 5 secs...")
	   (run-with-timer 5 nil
			   'my-delete-window-if-buffer-still-there
			   (get-buffer-window buffer t) buffer))
	  (t
	   (message "Compilation exited abnormally: %s" string))))
  (setq compilation-finish-functions 'compile-autoclose))

; as the stock 'Run test via maven from malabar' does not work for me, here's a workaround
(defun lw/malabar-run-test ()
  (interactive)
  "runs Maven test for current buffer. Does not perform check if the test is actually a test."
  (malabar-run-maven-command (concat "-Dtest=" (car (split-string (buffer-name (current-buffer)) ".java")) " test")))

(defun lw/malabar-debug (main-class)
  (interactive "sMain class:")
  "Run (main) class in debug mode"
  (malabar-run-maven-command
   (format "exec:exec -Dexec.executable='java' -Dexec.args='-classpath %%classpath -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=1044' %s" main-class)))

(add-hook 'malabar-mode-hook  (lambda()
    (local-set-key (kbd "C-c C-v C-n") 'malabar-visit-corresponding-test)
    (local-set-key (kbd "C-c C-v T") 'lw/malabar-run-test)))

;; some hints from http://ivvprivate.blog.com/emacs/emacs-java/
;; better regexp for compilation buffers - stock Malabar regexps are not working as they include
;; a space in front of the filename
;(add-to-list 'compilation-error-regexp-alist
	     ;; works for Maven 3.x
	     ;;'("^\\(\\[ERROR\\] \\)?\\(/[^:]+\\):\\[\\([0-9]+\\),\\([0-9]+\\)\\]" 2 3 4))
;(add-to-list 'compilation-error-regexp-alist
;	     ;; works for maven jde javac server
;	     '("^\\(/[^:]+\\):\\([0-9]+\\):" 1 2))
;(add-to-list 'compilation-error-regexp-alist
	     ;; surefire
	     ;;'("^\\sw+(\\(\\sw+\\.\\)+\\(\\sw+\\)).+<<< \\(FAILURE\\|ERROR\\)!$" 2))
