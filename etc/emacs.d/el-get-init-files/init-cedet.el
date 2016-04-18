;; let's try to use the new way to configure the CEDET (ie. > 1.1)

(setq semantic-default-submodes
      '(global-semanticdb-minor-mode
        global-semantic-mru-bookmark-mode
        global-cedet-m3-minor-mode
        global-semantic-highlight-func-mode
        global-semantic-idle-scheduler-mode ; auto-parsing of the source files
        global-semantic-idle-completions-mode ; displaying possible completions in spare time
        global-semantic-idle-summary-mode ; displaying info about the current tag in spare time
        ;; useful in debugging
        global-semantic-show-parser-state-mode ; display parser state in the mode line
        ))

(semantic-mode 1)

;; anything lower makes things too slow. Maven's fault.
(setq semantic-idle-scheduler-idle-time 5)

;; semantic can apparently handle GNU global
(when (cedet-gnu-global-version-check t)
  (require 'semantic/db-global)
  (semanticdb-enable-gnu-global-databases 'c-mode)
  (semanticdb-enable-gnu-global-databases 'c++-mode)
  (semanticdb-enable-gnu-global-databases 'java-mode))

(require 'semantic/ia)

;; EDE can apparently parse the poms!?
(global-ede-mode t)
;; ok, but what we do with the JDE classes?... or - do we care?

;; java support
(require 'cedet-java)
(require 'semantic/db-javap)

;; sometimes I would like to work offline, especially when we work
;; 'outside' and links to our repos are down.
(require 'ede/maven2)
;; we could add an '-o' for offline to maven opts...
(defun lwiechec/ede-maven2-offline ()
  "change maven settings to make it work when offline"
  (interactive)
  (add-to-list 'ede-maven2-maven-options "--offline")
  t)
;; ... and remove it
(defun lwiechec/ede-maven2-online ()
  "change maven settings to make it work when online"
  (interactive)
  (setq ede-maven2-maven-options (delete "--offline" ede-maven2-maven-options))
  t)

;; the summary: I can complete the non-JDK code. I even get the JavaDocs, but
;; only for the local (ie. not from the dependencies) files. This makes
;; sense, I guess: the docs are _not_ in the JARs.
;; maybe there is a way, if there are javadoc JARs available?...
