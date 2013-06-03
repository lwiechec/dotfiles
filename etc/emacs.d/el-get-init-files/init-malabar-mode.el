(add-to-list 'auto-mode-alist '("\\.java\\'" . malabar-mode))

; optional: simulate constant compile-after-save (as in Eclipse)
;(add-hook 'malabar-mode-hook
;     (lambda ()
;       (add-hook 'after-save-hook 'malabar-compile-file-silently
;                  nil t)))

(add-hook 'malabar-mode-hook  (lambda()
    (local-set-key [(f11)] 'javadoc-lookup)
    (local-set-key [(shift f11)] 'javadoc-help)
    (local-set-key (kbd "C-c C-v C-n") 'malabar-visit-corresponding-test)))
