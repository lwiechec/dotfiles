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
 '(gtags-path-style (quote relative))
 '(helm-gtags-auto-update t)
 '(helm-gtags-ignore-case t)
 '(helm-gtags-path-style (quote helm))
 '(jiralib-url "http://nunc3sv9161.nu.nc3a:8000")
 '(newsticker-html-renderer (quote w3m-region))
 '(org-agenda-files
   (quote
    ("~/Dropbox/org/timesheet.2015.org" "/home/luke/Dropbox/org/agenda.org" "/home/luke/Dropbox/org/blackberry-comparison.org" "/home/luke/Dropbox/org/journal.org" "/home/luke/Dropbox/org/mobileorg.org" "/home/luke/Dropbox/org/notes.org" "/home/luke/Dropbox/org/todos.org" "/home/luke/Dropbox/org/deft/deft-0.org" "/home/luke/Dropbox/org/deft/deft-1.org" "/home/luke/Dropbox/org/deft/deft-10.org" "/home/luke/Dropbox/org/deft/deft-11.org" "/home/luke/Dropbox/org/deft/deft-12.org" "/home/luke/Dropbox/org/deft/deft-13.org" "/home/luke/Dropbox/org/deft/deft-14.org" "/home/luke/Dropbox/org/deft/deft-15.org" "/home/luke/Dropbox/org/deft/deft-16.org" "/home/luke/Dropbox/org/deft/deft-17.org" "/home/luke/Dropbox/org/deft/deft-18.org" "/home/luke/Dropbox/org/deft/deft-19.org" "/home/luke/Dropbox/org/deft/deft-2.org" "/home/luke/Dropbox/org/deft/deft-20.org" "/home/luke/Dropbox/org/deft/deft-21.org" "/home/luke/Dropbox/org/deft/deft-22.org" "/home/luke/Dropbox/org/deft/deft-23.org" "/home/luke/Dropbox/org/deft/deft-24.org" "/home/luke/Dropbox/org/deft/deft-25.org" "/home/luke/Dropbox/org/deft/deft-26.org" "/home/luke/Dropbox/org/deft/deft-27.org" "/home/luke/Dropbox/org/deft/deft-28 (luke-laptop's conflicted copy 2014-08-27).org" "/home/luke/Dropbox/org/deft/deft-28.org" "/home/luke/Dropbox/org/deft/deft-29.org" "/home/luke/Dropbox/org/deft/deft-3.org" "/home/luke/Dropbox/org/deft/deft-30.org" "/home/luke/Dropbox/org/deft/deft-31.org" "/home/luke/Dropbox/org/deft/deft-32.org" "/home/luke/Dropbox/org/deft/deft-33.org" "/home/luke/Dropbox/org/deft/deft-34.org" "/home/luke/Dropbox/org/deft/deft-35.org" "/home/luke/Dropbox/org/deft/deft-36.org" "/home/luke/Dropbox/org/deft/deft-37.org" "/home/luke/Dropbox/org/deft/deft-38.org" "/home/luke/Dropbox/org/deft/deft-39.org" "/home/luke/Dropbox/org/deft/deft-4.org" "/home/luke/Dropbox/org/deft/deft-40.org" "/home/luke/Dropbox/org/deft/deft-41.org" "/home/luke/Dropbox/org/deft/deft-5.org" "/home/luke/Dropbox/org/deft/deft-6.org" "/home/luke/Dropbox/org/deft/deft-7.org" "/home/luke/Dropbox/org/deft/deft-8.org" "/home/luke/Dropbox/org/deft/deft-9.org" "/home/luke/.org-jira/CCIF.org" "/home/luke/.org-jira/CSD.org")))
 '(org-agenda-include-diary t)
 '(org-capture-templates
   (quote
    (("t" "Todo" entry
      (file+headline "~/Dropbox/org/agenda.org" "Tasks")
      (file "~/Dropbox/org/templates/todo.orgtmpl")))))
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
 '(tail-max-size 20)
 '(tail-volatile nil)
 '(tramp-syntax (quote ftp)))
