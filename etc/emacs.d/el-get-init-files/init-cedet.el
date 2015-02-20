;; remove the built-in CEDET
(require 'cedet-remove-builtin)

;; using custom version of CEDET
;; enable EDE (Project Management) features
(global-ede-mode 1)
;; * This enables the database and idle reparse engines
; (semantic-load-enable-minimum-features)
;(semantic-load-enable-code-helpers)
; this will display all posibilities for completion for us to choose
;(global-semantic-idle-completions-mode)

; highlight current function
;;(global-semantic-highlight-func-mode)

; set some handy key bindings
(add-hook 'semantic-idle-completions-mode-hook (lambda ()
  (local-set-key (kbd "C-c s \t") 'senator-completion-menu-popup)))

;; semanticdb settings
;; add all project directories to SemanticDB project roots var
;; (as seen in http://stackoverflow.com/questions/221365/emacs-lisp-how-to-add-a-folder-and-all-its-first-level-sub-folders-to-the-load)
;(let ((basedir "~/work/projects"))
;  (dolist (f (directory-files basedir))
;    (let ((name (concat basedir "/" f)))
;      (when (and (file-directory-p name)
;		 (not (equal f ".."))
;		 (not (equal f ".")))
;	(add-to-list 'semanticdb-project-roots name)))))
