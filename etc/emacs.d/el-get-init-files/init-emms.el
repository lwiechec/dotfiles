; quick'n'dirty setup for EMMS

(require 'emms-setup)
(require 'emms-browser)
(require 'emms-playing-time)
(require 'emms-playlist-mode)
;(require 'emms-player-mpd)
(require 'emms-streams)
(require 'emms-mark)
(require 'emms-volume)
(require 'emms-mode-line)
(require 'emms-history)

; mpd setup
;(setq emms-player-mpd-server-name "localhost")
;(setq emms-player-mpd-server-port "6600")
;(add-to-list 'emms-info-functions 'emms-info-mpd)

;; my directory for music
(setq emms-source-file-default-directory "~/Music/")

(emms-standard)
(setq emms-player-list '(emms-player-mplayer emms-player-mplayer-playlist))
; we need to add http proxy for mplayer to be able to listen to streams online
(add-hook 'emms-player-started-hook #'proxy-set)

(global-set-key "\C-cm" nil)
(global-set-key "\C-cm " 'emms-pause)
(global-set-key "\C-cmq" 'emms-stop)
(global-set-key "\C-cmr" 'my-emms-streams)
(global-set-key "\C-cms" 'emms-seek)
(global-set-key "\C-cm-" 'emms-volume-mode-minus)
(global-set-key "\C-cm+" 'emms-volume-mode-plus)

;; enables mode line information
(emms-mode-line 1)

;; load the playlists
(emms-history-load)

(provide 'init-emms)
;;; init-emms.el ends here
