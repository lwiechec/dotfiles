;;; package --- Summary

;;; Commentary:

;; inspired by 'Writing a Spotify client in 16 minutes' by Kris Jenkins
;; https://www.youtube.com/watch?v=XjKtkEMUYGc
;; Lukasz Wiechec, 2014

(require 'url)
(require 'json)
(require 'helm)

;;; Code:
(defgroup grooveshark-search-group nil "Configuration values for Grooveshark search tool." :version 1.0)
(defcustom grooveshark-search-tinysong-api-key "098b9d6e9668f7aca62e1a43e76179b7" "TinySong API key.  To request, visit http://tinysong.com/api."
  :group 'grooveshark-search-group)
(defcustom grooveshark-search-tinysong-maxhits 20 "Max number of hits returned for query."
  :group 'grooveshark-search-group)


;; to play the song, we just call the browser with returned HREF, for example
;; TODO: choose from firefox or chrome?
(defun grooveshark-play (url) "Play song in the browser, by going to URL."
  (browse-url-firefox url))

(defun grooveshark-search (search-query)
  "Query Grooveshark with SEARCH-QUERY, read the results from the result buffer and parse as JSON to create ELisp list."
  ; check if configured correctly
  (if (or ((= (length grooveshark-search-tinysong-api-key) 0)
      (message "Please configure grooveshark-search")
    (with-current-buffer
	(url-retrieve-synchronously
	 (format "http://tinysong.com/s/%s?format=json&limit=%d&key=%s" search-query grooveshark-search-tinysong-maxhits grooveshark-search-tinysong-api-key))
      (goto-char (+ 1 url-http-end-of-headers))
      (json-read)))
	  )
      )
  )

;; will use helm to see the results of the query
(defvar helm-source-grooveshark
  '((name . "Grooveshark")
    (candidates . helm-grooveshark-search)
    (volatile)
    (multiline)
    (action . (("Play track" . helm-grooveshark-play-track)))))

(defun helm-grooveshark-play-track (track)
  "Play a TRACK."
  (grooveshark-play (cdr (assoc 'Url track))))


(defun format-track-for-display (track)
  "Format TRACK information to display in Helm."
  (format "%s / %s\n%s" (cdr (assoc 'ArtistName track)) (cdr (assoc 'AlbumName track)) (cdr (assoc 'SongName track))))

(defun helm-grooveshark-search ()
  "Return pairs of (track_name . track_data)."
  (mapcar (lambda (track)
	    (cons (format-track-for-display track)
		  track))
	  (grooveshark-search helm-pattern)
	  )
  )

(defun helm-grooveshark () "Query Grooveshark and play in the browser."
  (interactive)
  (helm :sources '(helm-source-grooveshark)))

(provide 'grooveshark-search)
;;; grooveshark-search.el ends here
