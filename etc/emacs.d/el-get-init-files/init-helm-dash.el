(define-key global-map (kbd "<f12>") 'helm-dash-at-point)


(defun jwintz/dash-path (docset)
  (if (string= docset "OpenGL_2")
      (concat (concat helm-dash-docsets-path "/") "OpenGL2.docset")
    (if (string= docset "OpenGL_3")
        (concat (concat helm-dash-docsets-path "/") "OpenGL3.docset")
      (if (string= docset "OpenGL_4")
          (concat (concat helm-dash-docsets-path "/") "OpenGL4.docset")
        (if (string= docset "Emacs_Lisp")
            (concat (concat helm-dash-docsets-path "/") "Emacs Lisp.docset")
          (concat
            (concat
             (concat
              (concat helm-dash-docsets-path "/")
              (nth 0 (split-string docset "_")))) ".docset"))))))

(defun jwintz/dash-install (docset)
  (unless (file-exists-p (jwintz/dash-path docset))
    (helm-dash-install-docset docset)))

(defun jwintz/dash-hook ()
  (local-set-key "\C-h\C-df" 'helm-dash)
  (local-set-key "\C-h\C-dg" 'helm-dash-at-point)
  (local-set-key "\C-h\C-dh" 'helm-dash-reset-connections))

(defun jwintz/dash-hook-java ()
  (interactive)
  (setq-local helm-dash-docsets '("Java_SE8")))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Setup
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq helm-dash-docsets-path (format "%s/.docsets" (getenv "HOME")))

(jwintz/dash-install "Android")
(jwintz/dash-install "Bash")
(jwintz/dash-install "C")
(jwintz/dash-install "C++")
(jwintz/dash-install "Clojure")
(jwintz/dash-install "CoffeeScript")
(jwintz/dash-install "Common Lisp")
(jwintz/dash-install "Groovy")
(jwintz/dash-install "Haskell")
(jwintz/dash-install "HTML")
;(jwintz/dash-install "LaTex") ; some problems there...
(jwintz/dash-install "Markdown")
(jwintz/dash-install "MongoDB")
(jwintz/dash-install "Redis")
(jwintz/dash-install "Emacs_Lisp")
(jwintz/dash-install "Java_SE7")
(jwintz/dash-install "JavaScript")
(jwintz/dash-install "Perl")
(jwintz/dash-install "Ruby_2")
(jwintz/dash-install "RequireJS")

(setq helm-dash-common-docsets '("C" "C++" "Qt"))
(setq helm-dash-min-length 2)

(add-hook 'prog-mode-hook 'jwintz/dash-hook)
(add-hook 'java-mode-hook 'jwintz/dash-hook-java)
