(add-hook 'clojure-mode-hook 'paredit-mode)

; sometimes I have this strange error regardin this variable... this seems to fix it
(defvar clojure--prettify-symbols-alist nil)
