;;; -*- mode: emacs-lisp; -*-
;; customizations from customize-* commands

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ack-executable (executable-find "ack-grep"))
 '(bsh-jar "~/work/javautil/beanshell/bsh.jar")
 '(bsh-startup-timeout 2)
 '(coffee-tab-width 2)
 '(company-backends
   (quote
    (company-elisp company-semantic company-bbdb company-nxml company-css company-clang company-ropemacs company-cmake company-capf
                   (company-dabbrev-code company-gtags company-etags company-keywords)
                   company-files company-dabbrev)))
 '(company-dabbrev-code-modes
   (quote
    (prog-mode batch-file-mode csharp-mode css-mode erlang-mode haskell-mode jde-mode lua-mode python-mode java-mode malabar-mode js2-mode)))
 '(compilation-error-regexp-alist
   (quote
    (("\\(/[^:]+\\):\\([0-9]+\\):\\([0-9]+\\)" 1 2 3)
     ("^\\sw+(\\(\\sw+\\.\\)+\\(\\sw+\\)).+<<< \\(FAILURE\\|ERROR\\)!$" 2)
     ("^\\(\\[ERROR\\] \\)?\\(/[^:]+\\):\\[\\([0-9]+\\),\\([0-9]+\\)\\]" 2 3 4)
     ("^  Failure point:  \\([^:]+\\):\\([0-9]+\\)$" malabar-find-test-class-from-junit-failure 2)
     ("^  \\([[:alnum:]]+\\)(\\([[:alnum:].]+\\))$" malabar-find-test-class-from-error)
     ("WARNING::\\(.+?\\)::\\(.+?\\)::\\(.+?\\)::\\(.+?\\)::\\(.+?\\)::\\(.+?\\)::\\(.+?\\)" 1 2 nil 1)
     ("ERROR::\\(.+?\\)::\\(.+?\\)::\\(.+?\\)::\\(.+?\\)::\\(.+?\\)::\\(.+?\\)::\\(.+?\\)" 1 2)
     absoft ada aix ant bash borland python-tracebacks-and-caml comma cucumber msft edg-1 edg-2 epc ftnchek iar ibm irix java jikes-file jikes-line gcc-include ruby-Test::Unit gnu lcc makepp mips-1 mips-2 msft omake oracle perl php rxp sparc-pascal-file sparc-pascal-line sparc-pascal-example sun sun-ada watcom 4bsd gcov-file gcov-header gcov-nomark gcov-called-line gcov-never-called perl--Pod::Checker perl--Test perl--Test2 perl--Test::Harness weblint)))
 '(compilation-scroll-output t)
 '(compilation-skip-threshold 2)
 '(compilation-window-height 25)
 '(custom-safe-themes
   (quote
    ("c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(diary-file "~/.emacs.d/diary")
 '(ede-project-directories (quote ("/home/luke/work/projects/moskito-jmx")))
 '(el-get-user-package-directory "~/.emacs.d/el-get-init-files")
 '(emms-cache-file "~/.emacs.d/.emms-cache")
 '(emms-info-asynchronously nil)
 '(emms-info-functions (quote (emms-info-ogginfo emms-info-mpd)))
 '(emms-player-list (quote (emms-player-mpd)))
 '(emms-player-mpd-music-directory "/stuff/music")
 '(emms-playlist-buffer-name "*EMMS Playlist*")
 '(emms-playlist-default-major-mode (quote emms-playlist-mode))
 '(emms-playlist-mode-open-playlists t)
 '(emms-show-format "NP: %s")
 '(emms-stream-default-action "play")
 '(emms-track-initialize-functions (quote (emms-info-initialize-track)))
 '(emms-volume-change-amount 3)
 '(emms-volume-change-function (quote emms-volume-mpd-change))
 '(foreground-color "#839496")
 '(gh-profile-alist
   (quote
    (("github.nu.nc3a" :remote-regexp "^\\(?:git@github\\.nu\\.nc3a:\\|\\(?:git\\|https?\\|ssh\\)://.*@?github\\.nu\\.nc3a/\\)\\(.*\\)/\\(.*\\)\\(?:\\.git\\)?" :url "http://github.nu.nc3a/api/v3")
     ("github" :url "https://api.github.com" :remote-regexp "^\\(?:git@github\\.com:\\|\\(?:git\\|https?\\|ssh\\)://.*@?github\\.com/\\)\\(.*\\)/\\(.*\\)\\(?:\\.git\\)?"))))
 '(gtags-path-style (quote relative))
 '(helm-gtags-auto-update t)
 '(helm-gtags-ignore-case t)
 '(helm-gtags-path-style (quote helm))
 '(jdibug-source-paths
   (quote
    ("~/work/projects/nsili/src/java" "~/work/projects/csd-cmdline/src/main/java")))
 '(jiralib-url "http://nunc3sv9161.nu.nc3a:8000")
 '(ldap-host-parameters-alist
   (quote
    (("nuncidc001.nu.nc3a" base "ou=nc3a" binddn "DC=nu,DC=nc3a"))))
 '(malabar-groovy-grooysh "~/.gvm/groovy/current/bin/groovysh")
 '(malabar-groovy-proxy-port "" t)
 '(malabar-jdk-extra-locations (quote ("~/work/jdk/default_7")))
 '(newsticker-html-renderer (quote w3m-region))
 '(org-agenda-files
   (quote
    ("~/Dropbox/org/" "~/Dropbox/org/deft/")))
 '(org-agenda-include-diary t)
 '(org-capture-templates
   (quote
    (("t" "Todo" entry
      (file+headline "~/Dropbox/org/agenda.org" "Tasks")
      (file "~/Dropbox/org/templates/todo.orgtmpl")))))
 '(projectile-globally-ignored-files (quote ("TAGS" "GPATH" "GRTAGS" "GTAGS" "GSYMS")))
 '(relative-gtags-ignore-case t)
 '(safe-local-variable-values
   (quote
    ((eval ignore-errors "Write-contents-functions is a buffer-local alternative to before-save-hook"
           (add-hook
            (quote write-contents-functions)
            (lambda nil
              (delete-trailing-whitespace)
              nil))
           (require
            (quote whitespace))
           "Sometimes the mode needs to be toggled off and on."
           (whitespace-mode 0)
           (whitespace-mode 1))
     (whitespace-line-column . 80)
     (whitespace-style face trailing lines-tail)
     (require-final-newline . t))))
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "localhost")
 '(smtpmail-smtp-service 1025)
 '(srecode-map-load-path
   (quote
    ("/usr/local/share/emacs/24.5/etc/srecode" "~/.srecode")))
 '(tail-max-size 20)
 '(tail-volatile nil)
 '(tramp-syntax (quote ftp))
 '(user-full-name "Lukasz Wiechec")
 '(user-mail-address "Lukasz.Wiechec@ncia.nato.int")
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-enable-auto-indentation t)
 '(web-mode-markup-indent-offset 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
