; quick'n'dirty setup for EMMS

(require 'emms-setup)
(require 'emms-browser)
(require 'emms-playing-time)
(require 'emms-playlist-mode)
(require 'emms-player-mpd)
(require 'emms-streams)
(require 'emms-mark)
(require 'emms-volume)

; mpd setup
(setq emms-player-mpd-server-name "localhost")
(setq emms-player-mpd-server-port "6600")
(add-to-list 'emms-info-functions 'emms-info-mpd)


(emms-standard)
(setq emms-player-list '(emms-player-mplayer emms-player-mplayer-playlist))
; we need to add http proxy for mplayer to be able to listen to streams online
(defun setup-http-proxy ()
  (setenv "http_proxy" "http://yellow.nc3a.nato.int:8088"))
(add-hook 'emms-player-started-hook #'setup-http-proxy)

(global-set-key "\C-cm" nil)
(global-set-key "\C-cm " 'emms-pause)
(global-set-key "\C-cmq" 'emms-stop)
(global-set-key "\C-cmr" 'my-emms-streams)
(global-set-key "\C-cms" 'emms-seek)
(global-set-key "\C-cm-" 'emms-volume-mode-minus)
(global-set-key "\C-cm+" 'emms-volume-mode-plus)
