; some of the utilities to work with Java files

; utility functions: generate getters and setters for Java fields
; to be used as: (generate-class-getter-setter 'public 'private)
(defun make-class-getter-setter (type var)
  (format
   (concat "public %s get%s() { return %s; }\n"
           "public void set%s(%s %s) { this.%s = %s; }\n")
   type (capitalize var) var                    ; getter line
   (capitalize var) type var var var))     ; setter line

(defun extract-class-variables (&rest modifiers)
  (let ((regexp
	 (concat
	  "^\\([ \t]*\\)"
	  "\\(" (mapconcat (lambda (m) (format "%S" m)) modifiers "\\|") "\\)"
	  "\\([ \t]*\\)"
	  "\\([]\[A-Za-z0-9<>]+\\)"
	  "\\([ \t]*\\)"
	  "\\([a-zA-Z0-9]+\\).*;$")))
    (save-excursion
      (goto-char (point-min))
      (loop for pos = (search-forward-regexp regexp nil t)
	    while pos collect (let ((modifier (match-string 2))
				    (type (match-string 4))
				    (name (match-string 6)))
				(list modifier type name))))))

(defun generate-class-getter-setter (&rest modifiers)
  (let ((oldpoint (point)))
    (insert
     (mapconcat (lambda (var) (apply 'make-class-getter-setter (rest var)))
                (apply 'extract-class-variables modifiers)
                "\n"))
    (c-indent-region oldpoint (point) t)))


;; 'manual' way to insert setter/getter
(defun insert-gettersetter (type field)
  "Inserts a Java field, and getter/setter methods."
  (interactive "MType: \nMField: ")

  (let ((oldpoint (point))
        (capfield (concat (capitalize (substring field 0 1)) (substring field 1)))
        )
    (insert (concat "public " type " get" capfield "()\n"
                    "{\n"
                    "    return this." field ";\n"
                    "}\n\n"
                    "public void set" capfield "(" type " " field ")\n"
                    "{\n"
                    "    this." field " = " field ";\n"
                    "}\n"
                    ))
    (c-indent-region oldpoint (point) t)
    )

  )

(provide 'my-java-utils)
