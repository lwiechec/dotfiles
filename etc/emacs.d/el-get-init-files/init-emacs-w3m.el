(require 'w3m)

;; enable quick jump to links
(w3m-lnum-mode 1)

(defun wikipedia-search (search-term)
  “Search for SEARCH-TERM on wikipedia”
   (interactive
    (let ((term (if mark-active
		    (buffer-substring (region-beginning) (region-end))
		  (word-at-point))))
      (list
       (read-string
	(format “Wikipedia (%s):” term) nil nil term)))
    )
   (browse-url
    (concat
     “http://en.m.wikipedia.org/w/index.php?search=”
      search-term
      ))
   )
