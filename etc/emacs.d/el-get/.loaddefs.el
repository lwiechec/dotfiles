;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (ace-jump-mode ace-jump-line-mode ace-jump-word-mode
;;;;;;  ace-jump-char-mode ace-jump-mode-pop-mark) "ace-jump-mode/ace-jump-mode"
;;;;;;  "ace-jump-mode/ace-jump-mode.el" (20751 44480))
;;; Generated autoloads from ace-jump-mode/ace-jump-mode.el

(autoload 'ace-jump-mode-pop-mark "ace-jump-mode/ace-jump-mode" "\
Pop up a postion from `ace-jump-mode-mark-ring', and jump back to that position

\(fn)" t nil)

(autoload 'ace-jump-char-mode "ace-jump-mode/ace-jump-mode" "\
AceJump char mode

\(fn QUERY-CHAR)" t nil)

(autoload 'ace-jump-word-mode "ace-jump-mode/ace-jump-mode" "\
AceJump word mode.
You can set `ace-jump-word-mode-use-query-char' to nil to prevent
asking for a head char, that will mark all the word in current
buffer.

\(fn HEAD-CHAR)" t nil)

(autoload 'ace-jump-line-mode "ace-jump-mode/ace-jump-mode" "\
AceJump line mode.
Marked each no empty line and move there

\(fn)" t nil)

(autoload 'ace-jump-mode "ace-jump-mode/ace-jump-mode" "\
AceJump mode is a minor mode for you to quick jump to a
position in the curret view.
   There is three submode now:
     `ace-jump-char-mode'
     `ace-jump-word-mode'
     `ace-jump-line-mode'

You can specify the sequence about which mode should enter
by customize `ace-jump-mode-submode-list'.

If you do not want to query char for word mode, you can change
`ace-jump-word-mode-use-query-char' to nil.

If you don't like the default move keys, you can change it by
setting `ace-jump-mode-move-keys'.

You can constrol whether use the case sensitive via
`ace-jump-mode-case-fold'.

\(fn &optional PREFIX)" t nil)

;;;***

;;;### (autoloads (ack-menu ack-find-file ack-find-same-file) "ack-menu/ack-menu"
;;;;;;  "ack-menu/ack-menu.el" (20751 44695))
;;; Generated autoloads from ack-menu/ack-menu.el

(autoload 'ack-find-same-file "ack-menu/ack-menu" "\
Prompt to find a file found by ack in DIRECTORY.

\(fn &optional DIRECTORY)" t nil)

(autoload 'ack-find-file "ack-menu/ack-menu" "\
Prompt to find a file found by ack in DIRECTORY.

\(fn &optional DIRECTORY)" t nil)

(autoload 'ack-menu "ack-menu/ack-menu" "\
Invoke the ack menu. When finished, ack will be run with the
specified options.

\(fn)" t nil)

;;;***

;;;### (autoloads (anything-other-buffer anything-at-point anything)
;;;;;;  "anything/anything" "anything/anything.el" (20751 42160))
;;; Generated autoloads from anything/anything.el

(autoload 'anything "anything/anything" "\
Main function to execute anything sources.

Keywords supported:
:sources :input :prompt :resume :preselect :buffer :keymap :default :history
Extra keywords are supported and can be added, see below.

When call interactively with no arguments deprecated `anything-sources'
will be used if non--nil.

PLIST is a list like (:key1 val1 :key2 val2 ...) or
\(&optional sources input prompt resume preselect buffer keymap default history).

Basic keywords are the following:

:sources

Temporary value of `anything-sources'.  It also accepts a
symbol, interpreted as a variable of an anything source.  It
also accepts an alist representing an anything source, which is
detected by (assq 'name ANY-SOURCES)

:input

Temporary value of `anything-pattern', ie. initial input of minibuffer.

:prompt

Prompt other than \"pattern: \".

:resume

If t, Resurrect previously instance of `anything'.  Skip the initialization.
If 'noresume, this instance of `anything' cannot be resumed.

:preselect

Initially selected candidate.  Specified by exact candidate or a regexp.

:buffer

`anything-buffer' instead of *anything*.

:keymap

`anything-map' for current `anything' session.

:default

A default argument that will be inserted in minibuffer with \\<minibuffer-local-map>\\[next-history-element].
When nil of not present `thing-at-point' will be used instead.

:history

By default all minibuffer input is pushed to `minibuffer-history',
if an argument HISTORY is provided, input will be pushed to HISTORY.
History element should be a symbol.

Of course, conventional arguments are supported, the two are same.

\(anything :sources sources :input input :prompt prompt :resume resume
           :preselect preselect :buffer buffer :keymap keymap :default default
           :history history)
\(anything sources input prompt resume preselect buffer keymap default history)

Other keywords are interpreted as local variables of this anything session.
The `anything-' prefix can be omitted.  For example,

\(anything :sources 'anything-c-source-buffers
           :buffer \"*buffers*\" :candidate-number-limit 10)

means starting anything session with `anything-c-source-buffers'
source in *buffers* buffer and set variable `anything-candidate-number-limit'
to 10 as session local variable.

\(fn &rest PLIST)" t nil)

(autoload 'anything-at-point "anything/anything" "\
Call anything with symbol at point as initial input.
ANY-SOURCES ANY-INPUT ANY-PROMPT ANY-RESUME ANY-PRESELECT and ANY-BUFFER
are same args as in `anything'.

\(fn &optional ANY-SOURCES ANY-INPUT ANY-PROMPT ANY-RESUME ANY-PRESELECT ANY-BUFFER)" t nil)

(autoload 'anything-other-buffer "anything/anything" "\
Simplified interface of `anything' with other `anything-buffer'.
Call `anything' with only ANY-SOURCES and ANY-BUFFER as args.

\(fn ANY-SOURCES ANY-BUFFER)" nil nil)

;;;***

;;;### (autoloads (anything-ctags-current-file anything-xrandr-set
;;;;;;  anything-c-apropos anything-ucs anything-ratpoison-commands
;;;;;;  anything-c-run-external-command anything-eshell-history anything-esh-pcomplete
;;;;;;  anything-apt anything-world-time anything-select-xfont anything-top
;;;;;;  anything-create anything-execute-anything-command anything-call-source
;;;;;;  anything-surfraw anything-calcul-expression anything-eval-expression-with-eldoc
;;;;;;  anything-eval-expression anything-yaoddmuse-emacswiki-post-library
;;;;;;  anything-yaoddmuse-emacswiki-edit-or-view anything-all-mark-rings
;;;;;;  anything-global-mark-ring anything-mark-ring anything-simple-call-tree
;;;;;;  anything-bookmark-ext anything-manage-advice anything-M-x
;;;;;;  anything-filelist+ anything-filelist anything-c-etags-select
;;;;;;  anything-do-pdfgrep anything-do-zgrep anything-do-grep anything-dired-hardlink-file
;;;;;;  anything-dired-symlink-file anything-dired-copy-file anything-dired-rename-file
;;;;;;  anything-insert-file anything-write-file anything-find-files
;;;;;;  anything-c-copy-files-async anything-regexp anything-org-headlines
;;;;;;  anything-browse-code anything-occur anything-list-emacs-process
;;;;;;  anything-timers anything-bm-list anything-eev-anchors anything-emms
;;;;;;  anything-org-keywords anything-man-woman anything-register
;;;;;;  anything-c-insert-latex-math anything-c-pp-bookmarks anything-bookmarks
;;;;;;  anything-colors anything-firefox-bookmarks anything-w3m-bookmarks
;;;;;;  anything-locate anything-bbdb anything-buffers-list anything-for-buffers
;;;;;;  anything-yahoo-suggest anything-google-suggest anything-imenu
;;;;;;  anything-gentoo anything-minibuffer-history anything-show-kill-ring
;;;;;;  anything-info-at-point anything-recentf anything-for-files
;;;;;;  anything-mini anything-c-reset-adaptative-history anything-c-set-variable
;;;;;;  anything-c-call-interactively anything-w32-shell-execute-open-file
;;;;;;  anything-lisp-completion-or-file-name-at-point anything-lisp-completion-at-point-or-indent
;;;;;;  anything-c-complete-file-name-at-point anything-lisp-completion-at-point
;;;;;;  anything-completion-mode anything-yaoddmuse-cache-pages anything-c-bmkext-run-edit
;;;;;;  anything-c-bookmark-run-delete anything-c-bookmark-run-jump-other-window
;;;;;;  anything-yank-text-at-point anything-c-grep-run-save-buffer
;;;;;;  anything-c-grep-run-other-window-action anything-c-grep-run-default-action
;;;;;;  anything-c-grep-run-persistent-action anything-c-goto-next-file
;;;;;;  anything-c-goto-precedent-file anything-dired-mode anything-ff-run-kill-buffer-persistent
;;;;;;  anything-ff-persistent-delete anything-ff-properties-persistent
;;;;;;  anything-ff-run-print-file anything-ff-run-etags anything-ff-run-gnus-attach-files
;;;;;;  anything-ff-run-locate anything-ff-run-open-file-externally
;;;;;;  anything-ff-run-switch-other-frame anything-ff-run-switch-other-window
;;;;;;  anything-ff-run-switch-to-eshell anything-ff-run-complete-fn-at-point
;;;;;;  anything-ff-run-delete-file anything-ff-run-hardlink-file
;;;;;;  anything-ff-run-symlink-file anything-ff-run-ediff-merge-file
;;;;;;  anything-ff-run-ediff-file anything-ff-run-eshell-command-on-file
;;;;;;  anything-ff-run-load-file anything-ff-run-byte-compile-file
;;;;;;  anything-ff-run-rename-file anything-ff-run-copy-file anything-ff-run-zgrep
;;;;;;  anything-ff-run-pdfgrep anything-ff-run-grep anything-ff-run-switch-to-history
;;;;;;  anything-ff-run-toggle-auto-update anything-buffer-run-ediff
;;;;;;  anything-buffer-switch-to-elscreen anything-buffer-switch-other-frame
;;;;;;  anything-buffer-switch-other-window anything-buffer-run-query-replace
;;;;;;  anything-buffer-run-query-replace-regexp anything-buffer-run-zgrep
;;;;;;  anything-buffer-run-grep anything-buffer-run-kill-buffers
;;;;;;  anything-buffer-save-persistent anything-buffer-revert-persistent
;;;;;;  anything-buffer-diff-persistent anything-toggle-all-marks
;;;;;;  anything-unmark-all anything-mark-all anything-insert-buffer-name
;;;;;;  anything-test-sources anything-etags-help anything-pdfgrep-help
;;;;;;  anything-grep-help anything-generic-file-help anything-read-file-name-help
;;;;;;  anything-ff-help anything-c-buffer-help anything-configuration)
;;;;;;  "anything/anything-config" "anything/anything-config.el"
;;;;;;  (20751 42160))
;;; Generated autoloads from anything/anything-config.el

(autoload 'anything-configuration "anything/anything-config" "\
Customize `anything'.

\(fn)" t nil)

(defvar anything-command-map)

(autoload 'anything-c-buffer-help "anything/anything-config" "\
Help command for anything buffers.

\(fn)" t nil)

(autoload 'anything-ff-help "anything/anything-config" "\
Help command for `anything-find-files'.

\(fn)" t nil)

(autoload 'anything-read-file-name-help "anything/anything-config" "\


\(fn)" t nil)

(autoload 'anything-generic-file-help "anything/anything-config" "\


\(fn)" t nil)

(autoload 'anything-grep-help "anything/anything-config" "\


\(fn)" t nil)

(autoload 'anything-pdfgrep-help "anything/anything-config" "\


\(fn)" t nil)

(autoload 'anything-etags-help "anything/anything-config" "\
The help function for etags.

\(fn)" t nil)

(autoload 'anything-test-sources "anything/anything-config" "\
List all anything sources for test.
The output is sexps which are evaluated by \\[eval-last-sexp].

\(fn)" t nil)

(autoload 'anything-insert-buffer-name "anything/anything-config" "\
Insert buffer name.

\(fn)" t nil)

(autoload 'anything-mark-all "anything/anything-config" "\
Mark all visible unmarked candidates in current source.

\(fn)" t nil)

(autoload 'anything-unmark-all "anything/anything-config" "\
Unmark all candidates in all sources of current anything session.

\(fn)" t nil)

(autoload 'anything-toggle-all-marks "anything/anything-config" "\
Toggle all marks.
Mark all visible candidates of current source or unmark all candidates
visible or invisible in all sources of current anything session

\(fn)" t nil)

(autoload 'anything-buffer-diff-persistent "anything/anything-config" "\
Toggle diff buffer without quitting anything.

\(fn)" t nil)

(autoload 'anything-buffer-revert-persistent "anything/anything-config" "\
Revert buffer without quitting anything.

\(fn)" t nil)

(autoload 'anything-buffer-save-persistent "anything/anything-config" "\
Save buffer without quitting anything.

\(fn)" t nil)

(autoload 'anything-buffer-run-kill-buffers "anything/anything-config" "\
Run kill buffer action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-run-grep "anything/anything-config" "\
Run Grep action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-run-zgrep "anything/anything-config" "\
Run Grep action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-run-query-replace-regexp "anything/anything-config" "\
Run Query replace regexp action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-run-query-replace "anything/anything-config" "\
Run Query replace action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-switch-other-window "anything/anything-config" "\
Run switch to other window action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-switch-other-frame "anything/anything-config" "\
Run switch to other frame action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-switch-to-elscreen "anything/anything-config" "\
Run switch to elscreen  action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-run-ediff "anything/anything-config" "\
Run ediff action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-ff-run-toggle-auto-update "anything/anything-config" "\


\(fn)" t nil)

(autoload 'anything-ff-run-switch-to-history "anything/anything-config" "\
Run Switch to history action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-grep "anything/anything-config" "\
Run Grep action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-pdfgrep "anything/anything-config" "\
Run Pdfgrep action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-zgrep "anything/anything-config" "\
Run Grep action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-copy-file "anything/anything-config" "\
Run Copy file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-rename-file "anything/anything-config" "\
Run Rename file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-byte-compile-file "anything/anything-config" "\
Run Byte compile file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-load-file "anything/anything-config" "\
Run Load file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-eshell-command-on-file "anything/anything-config" "\
Run eshell command on file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-ediff-file "anything/anything-config" "\
Run Ediff file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-ediff-merge-file "anything/anything-config" "\
Run Ediff merge file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-symlink-file "anything/anything-config" "\
Run Symlink file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-hardlink-file "anything/anything-config" "\
Run Hardlink file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-delete-file "anything/anything-config" "\
Run Delete file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-complete-fn-at-point "anything/anything-config" "\
Run complete file name action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-switch-to-eshell "anything/anything-config" "\
Run switch to eshell action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-switch-other-window "anything/anything-config" "\
Run switch to other window action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-switch-other-frame "anything/anything-config" "\
Run switch to other frame action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-open-file-externally "anything/anything-config" "\
Run open file externally command action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-locate "anything/anything-config" "\
Run locate action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-gnus-attach-files "anything/anything-config" "\
Run gnus attach files command action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-etags "anything/anything-config" "\
Run Etags command action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-print-file "anything/anything-config" "\
Run Print file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-properties-persistent "anything/anything-config" "\
Show properties without quitting anything.

\(fn)" t nil)

(autoload 'anything-ff-persistent-delete "anything/anything-config" "\
Delete current candidate without quitting.

\(fn)" t nil)

(autoload 'anything-ff-run-kill-buffer-persistent "anything/anything-config" "\
Execute `anything-ff-kill-buffer-fname' whitout quitting.

\(fn)" t nil)

(defvar anything-dired-mode "Enable anything completion in Dired functions.\nBindings affected are C, R, S, H.\nThis is deprecated for Emacs24+ users, use `ac-mode' instead." "\
Non-nil if Anything-Dired mode is enabled.
See the command `anything-dired-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `anything-dired-mode'.")

(custom-autoload 'anything-dired-mode "anything/anything-config" nil)

(autoload 'anything-dired-mode "anything/anything-config" "\
Toggle Anything-Dired mode on or off.
With a prefix argument ARG, enable Anything-Dired mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil, and toggle it if ARG is `toggle'.
\\{anything-dired-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'anything-c-goto-precedent-file "anything/anything-config" "\
Go to precedent file in anything grep/etags buffers.

\(fn)" t nil)

(autoload 'anything-c-goto-next-file "anything/anything-config" "\
Go to precedent file in anything grep/etags buffers.

\(fn)" t nil)

(autoload 'anything-c-grep-run-persistent-action "anything/anything-config" "\
Run grep persistent action from `anything-do-grep-1'.

\(fn)" t nil)

(autoload 'anything-c-grep-run-default-action "anything/anything-config" "\
Run grep default action from `anything-do-grep-1'.

\(fn)" t nil)

(autoload 'anything-c-grep-run-other-window-action "anything/anything-config" "\
Run grep goto other window action from `anything-do-grep-1'.

\(fn)" t nil)

(autoload 'anything-c-grep-run-save-buffer "anything/anything-config" "\
Run grep save results action from `anything-do-grep-1'.

\(fn)" t nil)

(autoload 'anything-yank-text-at-point "anything/anything-config" "\
Yank text at point in minibuffer.

\(fn)" t nil)

(autoload 'anything-c-bookmark-run-jump-other-window "anything/anything-config" "\
Jump to bookmark from keyboard.

\(fn)" t nil)

(autoload 'anything-c-bookmark-run-delete "anything/anything-config" "\
Delete bookmark from keyboard.

\(fn)" t nil)

(autoload 'anything-c-bmkext-run-edit "anything/anything-config" "\
Run `bmkext-edit-bookmark' from keyboard.

\(fn)" t nil)

(autoload 'anything-yaoddmuse-cache-pages "anything/anything-config" "\
Fetch the list of files on emacswiki and create cache file.
If load is non--nil load the file and feed `yaoddmuse-pages-hash'.

\(fn &optional LOAD)" t nil)

(defvar anything-completion-mode nil "\
Non-nil if Anything-Completion mode is enabled.
See the command `anything-completion-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `anything-completion-mode'.")

(custom-autoload 'anything-completion-mode "anything/anything-config" nil)

(autoload 'anything-completion-mode "anything/anything-config" "\
Toggle generic anything completion.

All functions in Emacs that use `completing-read'
or `read-file-name' and friends will use anything interface
when this mode is turned on.
However you can modify this behavior for functions of your choice
with `anything-completing-read-handlers-alist'.

Called with a positive arg, turn on unconditionally, with a
negative arg turn off.
You can turn it on with `ac-mode'.

Some crap emacs functions may not be supported,
e.g `ffap-alternate-file' and maybe others
You can add such functions to `anything-completing-read-handlers-alist'
with a nil value.

Note: This mode will work only partially on Emacs23.

\(fn &optional ARG)" t nil)

(autoload 'anything-lisp-completion-at-point "anything/anything-config" "\
Anything lisp symbol completion at point.

\(fn)" t nil)

(autoload 'anything-c-complete-file-name-at-point "anything/anything-config" "\
Complete file name at point.

\(fn)" t nil)

(autoload 'anything-lisp-completion-at-point-or-indent "anything/anything-config" "\
First call indent and second call complete lisp symbol.
The second call should happen before `anything-lisp-completion-or-indent-delay',
after this delay, next call will indent again.
After completion, next call is always indent.
See that like click and double mouse click.
One hit indent, two quick hits maybe indent and complete.

\(fn ARG)" t nil)

(autoload 'anything-lisp-completion-or-file-name-at-point "anything/anything-config" "\
Complete lisp symbol or filename at point.
Filename completion happen if filename is started in
or between double quotes.

\(fn)" t nil)

(autoload 'anything-w32-shell-execute-open-file "anything/anything-config" "\


\(fn FILE)" t nil)

(autoload 'anything-c-call-interactively "anything/anything-config" "\
Execute CMD-OR-NAME as Emacs command.
It is added to `extended-command-history'.
`anything-current-prefix-arg' is used as the command's prefix argument.

\(fn CMD-OR-NAME)" nil nil)

(autoload 'anything-c-set-variable "anything/anything-config" "\
Set value to VAR interactively.

\(fn VAR)" t nil)

(autoload 'anything-c-reset-adaptative-history "anything/anything-config" "\
Delete all `anything-c-adaptive-history' and his file.
Useful when you have a old or corrupted `anything-c-adaptive-history-file'.

\(fn)" t nil)

(autoload 'anything-mini "anything/anything-config" "\
Preconfigured `anything' lightweight version (buffer -> recentf).

\(fn)" t nil)

(autoload 'anything-for-files "anything/anything-config" "\
Preconfigured `anything' for opening files.
ffap -> recentf -> buffer -> bookmark -> file-cache -> files-in-current-dir -> locate.

\(fn)" t nil)

(autoload 'anything-recentf "anything/anything-config" "\
Preconfigured `anything' for `recentf'.

\(fn)" t nil)

(autoload 'anything-info-at-point "anything/anything-config" "\
Preconfigured `anything' for searching info at point.
With a prefix-arg insert symbol at point.

\(fn ARG)" t nil)

(autoload 'anything-show-kill-ring "anything/anything-config" "\
Preconfigured `anything' for `kill-ring'.
It is drop-in replacement of `yank-pop'.
You may bind this command to M-y.
First call open the kill-ring browser, next calls move to next line.

\(fn)" t nil)

(autoload 'anything-minibuffer-history "anything/anything-config" "\
Preconfigured `anything' for `minibuffer-history'.

\(fn)" t nil)

(autoload 'anything-gentoo "anything/anything-config" "\
Preconfigured `anything' for gentoo linux.

\(fn)" t nil)

(autoload 'anything-imenu "anything/anything-config" "\
Preconfigured `anything' for `imenu'.

\(fn)" t nil)

(autoload 'anything-google-suggest "anything/anything-config" "\
Preconfigured `anything' for google search with google suggest.

\(fn)" t nil)

(autoload 'anything-yahoo-suggest "anything/anything-config" "\
Preconfigured `anything' for Yahoo searching with Yahoo suggest.

\(fn)" t nil)

(autoload 'anything-for-buffers "anything/anything-config" "\
Preconfigured `anything' for buffers.

\(fn)" t nil)

(autoload 'anything-buffers-list "anything/anything-config" "\
Preconfigured `anything' to list buffers.
It is an enhanced version of `anything-for-buffers'.

\(fn)" t nil)

(autoload 'anything-bbdb "anything/anything-config" "\
Preconfigured `anything' for BBDB.

Needs BBDB.

http://bbdb.sourceforge.net/

\(fn)" t nil)

(autoload 'anything-locate "anything/anything-config" "\
Preconfigured `anything' for Locate.
Note: you can add locate options after entering pattern.
See 'man locate' for valid options.

You can specify a specific database with prefix argument ARG (C-u).
Many databases can be used: navigate and mark them.
See also `anything-locate-with-db'.

To create a user specific db, use
\"updatedb -l 0 -o db_path -U directory\".
Where db_path is a filename matched by
`anything-locate-db-file-regexp'.

\(fn ARG)" t nil)

(autoload 'anything-w3m-bookmarks "anything/anything-config" "\
Preconfigured `anything' for w3m bookmark.

Needs w3m and emacs-w3m.

http://w3m.sourceforge.net/
http://emacs-w3m.namazu.org/

\(fn)" t nil)

(autoload 'anything-firefox-bookmarks "anything/anything-config" "\
Preconfigured `anything' for firefox bookmark.
You will have to enable html bookmarks in firefox:
open about:config in firefox and double click on this line to enable value to true:

user_pref(\"browser.bookmarks.autoExportHTML\", false);

You should have now:

user_pref(\"browser.bookmarks.autoExportHTML\", true);

After closing firefox, you will be able to browse you bookmarks.

\(fn)" t nil)

(autoload 'anything-colors "anything/anything-config" "\
Preconfigured `anything' for color.

\(fn)" t nil)

(autoload 'anything-bookmarks "anything/anything-config" "\
Preconfigured `anything' for bookmarks.

\(fn)" t nil)

(autoload 'anything-c-pp-bookmarks "anything/anything-config" "\
Preconfigured `anything' for bookmarks (pretty-printed).

\(fn)" t nil)

(autoload 'anything-c-insert-latex-math "anything/anything-config" "\
Preconfigured anything for latex math symbols completion.

\(fn)" t nil)

(autoload 'anything-register "anything/anything-config" "\
Preconfigured `anything' for Emacs registers.

\(fn)" t nil)

(autoload 'anything-man-woman "anything/anything-config" "\
Preconfigured `anything' for Man and Woman pages.

\(fn)" t nil)

(autoload 'anything-org-keywords "anything/anything-config" "\
Preconfigured `anything' for org keywords.

\(fn)" t nil)

(autoload 'anything-emms "anything/anything-config" "\
Preconfigured `anything' for emms sources.

\(fn)" t nil)

(autoload 'anything-eev-anchors "anything/anything-config" "\
Preconfigured `anything' for eev anchors.

\(fn)" t nil)

(autoload 'anything-bm-list "anything/anything-config" "\
Preconfigured `anything' for visible bookmarks.

Needs bm.el

http://cvs.savannah.gnu.org/viewvc/*checkout*/bm/bm/bm.el

\(fn)" t nil)

(autoload 'anything-timers "anything/anything-config" "\
Preconfigured `anything' for timers.

\(fn)" t nil)

(autoload 'anything-list-emacs-process "anything/anything-config" "\
Preconfigured `anything' for emacs process.

\(fn)" t nil)

(autoload 'anything-occur "anything/anything-config" "\
Preconfigured Anything for Occur source.
If region is active, search only in region,
otherwise search in whole buffer.

\(fn)" t nil)

(autoload 'anything-browse-code "anything/anything-config" "\
Preconfigured anything to browse code.

\(fn)" t nil)

(autoload 'anything-org-headlines "anything/anything-config" "\
Preconfigured anything to show org headlines.

\(fn)" t nil)

(autoload 'anything-regexp "anything/anything-config" "\
Preconfigured anything to build regexps.
`query-replace-regexp' can be run from there against found regexp.

\(fn)" t nil)

(autoload 'anything-c-copy-files-async "anything/anything-config" "\
Preconfigured anything to copy file list FLIST to DEST asynchronously.

\(fn)" t nil)

(autoload 'anything-find-files "anything/anything-config" "\
Preconfigured `anything' for anything implementation of `find-file'.
Called with a prefix arg show history if some.
Don't call it from programs, use `anything-find-files-1' instead.
This is the starting point for nearly all actions you can do on files.

\(fn ARG)" t nil)

(autoload 'anything-write-file "anything/anything-config" "\
Preconfigured `anything' providing completion for `write-file'.

\(fn)" t nil)

(autoload 'anything-insert-file "anything/anything-config" "\
Preconfigured `anything' providing completion for `insert-file'.

\(fn)" t nil)

(autoload 'anything-dired-rename-file "anything/anything-config" "\
Preconfigured `anything' to rename files from dired.

\(fn)" t nil)

(autoload 'anything-dired-copy-file "anything/anything-config" "\
Preconfigured `anything' to copy files from dired.

\(fn)" t nil)

(autoload 'anything-dired-symlink-file "anything/anything-config" "\
Preconfigured `anything' to symlink files from dired.

\(fn)" t nil)

(autoload 'anything-dired-hardlink-file "anything/anything-config" "\
Preconfigured `anything' to hardlink files from dired.

\(fn)" t nil)

(autoload 'anything-do-grep "anything/anything-config" "\
Preconfigured anything for grep.
Contrarily to Emacs `grep' no default directory is given, but
the full path of candidates in ONLY.
That allow to grep different files not only in `default-directory' but anywhere
by marking them (C-<SPACE>). If one or more directory is selected
grep will search in all files of these directories.
You can use also wildcard in the base name of candidate.
If a prefix arg is given use the -r option of grep.
The prefix arg can be passed before or after start.
See also `anything-do-grep-1'.

\(fn)" t nil)

(autoload 'anything-do-zgrep "anything/anything-config" "\
Preconfigured anything for zgrep.

\(fn)" t nil)

(autoload 'anything-do-pdfgrep "anything/anything-config" "\
Preconfigured anything for pdfgrep.

\(fn)" t nil)

(autoload 'anything-c-etags-select "anything/anything-config" "\
Preconfigured anything for etags.
Called with one prefix arg use symbol at point as initial input.
Called with two prefix arg reinitialize cache.
If tag file have been modified reinitialize cache.

\(fn ARG)" t nil)

(autoload 'anything-filelist "anything/anything-config" "\
Preconfigured `anything' to open files instantly.

See `anything-c-filelist-file-name' docstring for usage.

\(fn)" t nil)

(autoload 'anything-filelist+ "anything/anything-config" "\
Preconfigured `anything' to open files/buffers/bookmarks instantly.

This is a replacement for `anything-for-files'.
See `anything-c-filelist-file-name' docstring for usage.

\(fn)" t nil)

(autoload 'anything-M-x "anything/anything-config" "\
Preconfigured `anything' for Emacs commands.
It is `anything' replacement of regular `M-x' `execute-extended-command'.

\(fn)" t nil)

(autoload 'anything-manage-advice "anything/anything-config" "\
Preconfigured `anything' to disable/enable function advices.

\(fn)" t nil)

(autoload 'anything-bookmark-ext "anything/anything-config" "\
Preconfigured `anything' for bookmark-extensions sources.
Needs bookmark-ext.el:
<http://mercurial.intuxication.org/hg/emacs-bookmark-extension>.
Contain also `anything-c-source-google-suggest'.

\(fn)" t nil)

(autoload 'anything-simple-call-tree "anything/anything-config" "\
Preconfigured `anything' for simple-call-tree. List function relationships.

Needs simple-call-tree.el.
http://www.emacswiki.org/cgi-bin/wiki/download/simple-call-tree.el

\(fn)" t nil)

(autoload 'anything-mark-ring "anything/anything-config" "\
Preconfigured `anything' for `anything-c-source-mark-ring'.

\(fn)" t nil)

(autoload 'anything-global-mark-ring "anything/anything-config" "\
Preconfigured `anything' for `anything-c-source-global-mark-ring'.

\(fn)" t nil)

(autoload 'anything-all-mark-rings "anything/anything-config" "\
Preconfigured `anything' for `anything-c-source-global-mark-ring' and `anything-c-source-mark-ring'.

\(fn)" t nil)

(autoload 'anything-yaoddmuse-emacswiki-edit-or-view "anything/anything-config" "\
Preconfigured `anything' to edit or view EmacsWiki page.

Needs yaoddmuse.el.

http://www.emacswiki.org/emacs/download/yaoddmuse.el

\(fn)" t nil)

(autoload 'anything-yaoddmuse-emacswiki-post-library "anything/anything-config" "\
Preconfigured `anything' to post library to EmacsWiki.

Needs yaoddmuse.el.

http://www.emacswiki.org/emacs/download/yaoddmuse.el

\(fn)" t nil)

(autoload 'anything-eval-expression "anything/anything-config" "\
Preconfigured anything for `anything-c-source-evaluation-result'.

\(fn ARG)" t nil)

(autoload 'anything-eval-expression-with-eldoc "anything/anything-config" "\
Preconfigured anything for `anything-c-source-evaluation-result' with `eldoc' support.

\(fn)" t nil)

(autoload 'anything-calcul-expression "anything/anything-config" "\
Preconfigured anything for `anything-c-source-calculation-result'.

\(fn)" t nil)

(autoload 'anything-surfraw "anything/anything-config" "\
Preconfigured `anything' to search PATTERN with search ENGINE.

\(fn PATTERN ENGINE)" t nil)

(autoload 'anything-call-source "anything/anything-config" "\
Preconfigured `anything' to call anything source.

\(fn)" t nil)

(autoload 'anything-execute-anything-command "anything/anything-config" "\
Preconfigured `anything' to execute preconfigured `anything'.

\(fn)" t nil)

(autoload 'anything-create "anything/anything-config" "\
Preconfigured `anything' to do many create actions from STRING.
See also `anything-create--actions'.

\(fn &optional STRING INITIAL-INPUT)" t nil)

(autoload 'anything-top "anything/anything-config" "\
Preconfigured `anything' for top command.

\(fn)" t nil)

(autoload 'anything-select-xfont "anything/anything-config" "\
Preconfigured `anything' to select Xfont.

\(fn)" t nil)

(autoload 'anything-world-time "anything/anything-config" "\
Preconfigured `anything' to show world time.

\(fn)" t nil)

(autoload 'anything-apt "anything/anything-config" "\
Preconfigured `anything' : frontend of APT package manager.
With a prefix arg reload cache.

\(fn ARG)" t nil)

(autoload 'anything-esh-pcomplete "anything/anything-config" "\
Preconfigured anything to provide anything completion in eshell.

\(fn)" t nil)

(autoload 'anything-eshell-history "anything/anything-config" "\
Preconfigured anything for eshell history.

\(fn)" t nil)

(autoload 'anything-c-run-external-command "anything/anything-config" "\
Preconfigured `anything' to run External PROGRAM asyncronously from Emacs.
If program is already running exit with error.
You can set your own list of commands with
`anything-c-external-commands-list'.

\(fn PROGRAM)" t nil)

(autoload 'anything-ratpoison-commands "anything/anything-config" "\
Preconfigured `anything' to execute ratpoison commands.

\(fn)" t nil)

(autoload 'anything-ucs "anything/anything-config" "\
Preconfigured anything for `ucs-names' math symbols.

\(fn)" t nil)

(autoload 'anything-c-apropos "anything/anything-config" "\
Preconfigured anything to describe commands, functions, variables and faces.

\(fn)" t nil)

(autoload 'anything-xrandr-set "anything/anything-config" "\


\(fn)" t nil)

(autoload 'anything-ctags-current-file "anything/anything-config" "\
Preconfigured `anything' to list function/variable definitions.

Needs Exuberant Ctags.

http://ctags.sourceforge.net/

\(fn)" t nil)

;;;***

;;;### (autoloads (anything-mp-toggle-match-plugin) "anything/anything-match-plugin"
;;;;;;  "anything/anything-match-plugin.el" (20751 42160))
;;; Generated autoloads from anything/anything-match-plugin.el

(autoload 'anything-mp-toggle-match-plugin "anything/anything-match-plugin" "\
Turn on/off multiple regexp matching in anything.
i.e anything-match-plugin.

\(fn)" t nil)

;;;***

;;;### (autoloads (auto-complete) "auto-complete/auto-complete" "auto-complete/auto-complete.el"
;;;;;;  (20751 43834))
;;; Generated autoloads from auto-complete/auto-complete.el

(autoload 'auto-complete "auto-complete/auto-complete" "\
Start auto-completion at current point.

\(fn &optional SOURCES)" t nil)

;;;***

;;;### (autoloads (deft deft-new-file) "deft/deft" "deft/deft.el"
;;;;;;  (20751 42234))
;;; Generated autoloads from deft/deft.el

(autoload 'deft-new-file "deft/deft" "\
Create a new file quickly.
Use either an automatically generated filename or the filter
string if non-nil and `deft-use-filename-as-title' is set.  If the
filter string is non-nil and title is not from filename, use it
as the title.

\(fn)" t nil)

(autoload 'deft "deft/deft" "\
Switch to *Deft* buffer and load files.

\(fn)" t nil)

;;;***

;;;### (autoloads (dired-single-toggle-buffer-name dired-single-magic-buffer
;;;;;;  dired-single-buffer-mouse dired-single-buffer) "dired-single/dired-single"
;;;;;;  "dired-single/dired-single.el" (20751 46990))
;;; Generated autoloads from dired-single/dired-single.el

(autoload 'dired-single-buffer "dired-single/dired-single" "\
Visit selected directory in current buffer.

Visits the selected directory in the current buffer, replacing the
   current contents with the contents of the new directory.  This doesn't
   prevent you from having more than one dired buffer.  The main difference
   is that a given dired buffer will not spawn off a new buffer every time
   a new directory is visited.

If the variable `dired-single-use-magic-buffer' is non-nil, and the current
   buffer's name is the same as that specified by the variable
`dired-single-magic-buffer-name', then the new directory's buffer will retain
   that same name (i.e. not only will dired only use a single buffer, but
its name will not change every time a new directory is entered).

Optional argument DEFAULT-DIRNAME specifies the directory to visit; if not
specified, the directory or file on the current line is used (assuming it's
a dired buffer).  If the current line represents a file, the file is visited
in another window.

\(fn &optional DEFAULT-DIRNAME)" t nil)

(autoload 'dired-single-buffer-mouse "dired-single/dired-single" "\
Mouse-initiated version of `dired-single-buffer' (which see).

Argument CLICK is the mouse-click event.

\(fn CLICK)" t nil)

(autoload 'dired-single-magic-buffer "dired-single/dired-single" "\
Switch to buffer whose name is the value of `dired-single-magic-buffer-name'.

If no such buffer exists, launch dired in a new buffer and rename that buffer
to the value of `dired-single-magic-buffer-name'.  If the current buffer is the
magic buffer, it will prompt for a new directory to visit.

Optional argument DEFAULT-DIRNAME specifies the directory to visit (defaults to
the currently displayed directory).

\(fn &optional DEFAULT-DIRNAME)" t nil)

(autoload 'dired-single-toggle-buffer-name "dired-single/dired-single" "\
Toggle between the 'magic' buffer name and the 'real' dired buffer name.

Will also seek to uniquify the 'real' buffer name.

\(fn)" t nil)

;;;***

;;;### (autoloads (ecb-byte-compile ecb-minor-mode ecb-activate)
;;;;;;  "ecb/ecb" "ecb/ecb.el" (20751 41491))
;;; Generated autoloads from ecb/ecb.el

(autoload 'ecb-activate "ecb/ecb" "\
Activates ECB and creates the special buffers for the choosen layout.
For the layout see `ecb-layout-name'. This function raises always the
ECB-frame if called from another frame. This is the same as calling
`ecb-minor-mode' with a positive argument.

\(fn)" t nil)

(autoload 'ecb-minor-mode "ecb/ecb" "\
Toggle ECB minor mode.
With prefix argument ARG, turn on if positive, otherwise off. Return non-nil
if the minor mode is enabled.

\\{ecb-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'ecb-byte-compile "ecb/ecb" "\
Byte-compiles the ECB package.
This is done for all lisp-files of ECB if FORCE-ALL is not nil or for each
lisp-file FILE.el which is either newer than FILE.elc or if FILE.elc doesn't
exist.

\(fn &optional FORCE-ALL)" t nil)

;;;***

;;;### (autoloads (ecb-show-help) "ecb/ecb-help" "ecb/ecb-help.el"
;;;;;;  (20751 41491))
;;; Generated autoloads from ecb/ecb-help.el

(autoload 'ecb-show-help "ecb/ecb-help" "\
Shows the online help of ECB in Info or HTML-format.
The format depends on the setting in `ecb-show-help-format'. If called with
prefix argument, i.e. if FORMAT is not nil then the user is prompted to choose
the format of the help (Info or Html).

If an error about not finding the needed help-file occurs please take a look
at the options `ecb-help-info-start-file' and `ecb-help-html-start-file'!

Note: If you got ECB as a standard XEmacs-package maybe the
HTML-online-documentation is not included.

\(fn &optional FORMAT)" t nil)

;;;***

;;;### (autoloads nil "ecb/ecb-util" "ecb/ecb-util.el" (20751 41491))
;;; Generated autoloads from ecb/ecb-util.el

(defconst ecb-running-xemacs (featurep 'xemacs))

;;;***

;;;### (autoloads (egg-minor-mode-find-file-hook egg-minor-mode)
;;;;;;  "egg/egg" "egg/egg.el" (20751 35971))
;;; Generated autoloads from egg/egg.el

(autoload 'egg-minor-mode "egg/egg" "\
Turn-on egg-minor-mode which would enable key bindings for
egg in current buffer.\\<egg-minor-mode-map>
\\[egg-start-new-branch] start a new branch from the current HEAD.
\\[egg-status] shows the repo's current status
\\[egg-commit-log-edit] start editing the commit message for the current staged changes.
\\[egg-file-stage-current-file] stage new changes of the current file
\\[egg-log] shows repo's history
\\[egg-file-checkout-other-version] checkout another version of the current file
\\[egg-file-cancel-modifications] delete unstaged modifications in the current file
\\[egg-next-action] perform the next logical action
\\[egg-file-diff] compare file with index or other commits
\\[egg-file-version-other-window] show other version of the current file.

\\{egg-minor-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'egg-minor-mode-find-file-hook "egg/egg" "\


\(fn)" nil nil)

(add-hook 'find-file-hook 'egg-git-dir)

(add-hook 'find-file-hook 'egg-minor-mode-find-file-hook)

;;;***

;;;### (autoloads (egg-grep egg-grep-mode egg-grep-process-setup)
;;;;;;  "egg/egg-grep" "egg/egg-grep.el" (20751 35971))
;;; Generated autoloads from egg/egg-grep.el

(autoload 'egg-grep-process-setup "egg/egg-grep" "\
Setup compilation variables and buffer for `egg-grep'.
Set up `compilation-exit-message-function' and run `egg-grep-setup-hook'.

\(fn)" nil nil)

(autoload 'egg-grep-mode "egg/egg-grep" "\
Sets `compilation-last-buffer' and `compilation-window-height'.

\(fn)" nil nil)

(autoload 'egg-grep "egg/egg-grep" "\


\(fn LEVEL)" t nil)

;;;***

;;;### (autoloads (ack-find-file ack-find-same-file ack ack-same)
;;;;;;  "full-ack/full-ack" "full-ack/full-ack.el" (20751 42297))
;;; Generated autoloads from full-ack/full-ack.el

(autoload 'ack-same "full-ack/full-ack" "\
Run ack with --type matching the current `major-mode'.
The types of files searched are determined by `ack-mode-type-alist' and
`ack-mode-extension-alist'.  If no type is configured the buffer's file
extension is used for the search.
PATTERN is interpreted as a regular expression, iff REGEXP is non-nil.  If
called interactively, the value of REGEXP is determined by `ack-search-regexp'.
A prefix arg toggles that value.
DIRECTORY is the root directory.  If called interactively, it is determined by
`ack-project-root-file-patterns'.  The user is only prompted, if
`ack-prompt-for-directory' is set.

\(fn PATTERN &optional REGEXP DIRECTORY)" t nil)

(autoload 'ack "full-ack/full-ack" "\
Run ack.
PATTERN is interpreted as a regular expression, iff REGEXP is non-nil.  If
called interactively, the value of REGEXP is determined by `ack-search-regexp'.
A prefix arg toggles that value.
DIRECTORY is the root directory.  If called interactively, it is determined by
`ack-project-root-file-patterns'.  The user is only prompted, if
`ack-prompt-for-directory' is set.

\(fn PATTERN &optional REGEXP DIRECTORY)" t nil)

(autoload 'ack-find-same-file "full-ack/full-ack" "\
Prompt to find a file found by ack in DIRECTORY.

\(fn &optional DIRECTORY)" t nil)

(autoload 'ack-find-file "full-ack/full-ack" "\
Prompt to find a file found by ack in DIRECTORY.

\(fn &optional DIRECTORY)" t nil)

;;;***

;;;### (autoloads (iedit-mode-toggle-on-function iedit-mode) "iedit/iedit"
;;;;;;  "iedit/iedit.el" (20751 37613))
;;; Generated autoloads from iedit/iedit.el

(autoload 'iedit-mode "iedit/iedit" "\
Toggle Iedit mode.
This command behaves differently, depending on the mark, point,
prefix argument and variable `iedit-transient-mark-sensitive'.

If Iedit mode is off, turn Iedit mode on.

When Iedit mode is turned on, all the occurrences of the current
region in the buffer (possibly narrowed) or a region are
highlighted.  If one occurrence is modified, the change are
propagated to all other occurrences simultaneously.

If region is not active, the current symbol (returns from
`current-word') is used as the occurrence by default.  The
occurrences of the current symbol, but not include occurrences
that are part of other symbols, are highlighted.  If you still
want to match all the occurrences, even though they are parts of
other symbols, you may have to mark the symbol first.

In the above two situations, with digit prefix argument 0, only
occurrences in current function are matched.  This is good for
renaming refactoring in programming.

You can also switch to Iedit mode from isearch mode directly. The
current search string is used as occurrence.  All occurrences of
the current search string are highlighted.

With an universal prefix argument, the occurrence when Iedit mode
is turned off last time in current buffer is used as occurrence.
This is intended to recover last Iedit mode which is turned off.
If region active, Iedit mode is limited within the current
region.

With repeated universal prefix argument, the occurrence when
Iedit mode is turned off last time (might be in other buffer) is
used as occurrence.  If region active, Iedit mode is limited
within the current region.

If Iedit mode is on and region is active, Iedit mode is
restricted in the region, e.g. the occurrences outside of the
region is excluded.

If Iedit mode is on and region is active, with an universal
prefix argument, Iedit mode is restricted outside of the region,
e.g. the occurrences in the region is excluded.

Turn off Iedit mode in other situations.

Commands:
\\{iedit-mode-keymap}
Keymap used within overlays:
\\{iedit-mode-occurrence-keymap}

\(fn &optional ARG)" t nil)

(autoload 'iedit-mode-toggle-on-function "iedit/iedit" "\
Toggle Iedit mode on current function.

\(fn)" t nil)

;;;***

;;;### (autoloads (iedit-rectangle-mode) "iedit/iedit-rect" "iedit/iedit-rect.el"
;;;;;;  (20751 37613))
;;; Generated autoloads from iedit/iedit-rect.el

(autoload 'iedit-rectangle-mode "iedit/iedit-rect" "\
Toggle Iedit-rect mode.

When Iedit-rect mode is on, a rectangle is started with visible
rectangle highlighting.  Rectangle editing support is based on
Iedit mechanism.

Commands:
\\{iedit-rect-keymap}

\(fn)" t nil)

;;;***

;;;### (autoloads (bsh-script-help) "jdee/lisp/beanshell" "jdee/lisp/beanshell.el"
;;;;;;  (20751 48872))
;;; Generated autoloads from jdee/lisp/beanshell.el

(autoload 'bsh-script-help "jdee/lisp/beanshell" "\
Display BeanShell User's Guide.

\(fn)" t nil)

;;;***

;;;### (autoloads (jde-compile-jde jde-show-help jde-mode jde-build
;;;;;;  jde-set-global-classpath jde-version) "jdee/lisp/jde" "jdee/lisp/jde.el"
;;;;;;  (20751 48872))
;;; Generated autoloads from jdee/lisp/jde.el

(defconst jde-version "2.4.1" "\
JDE version number.")

(autoload 'jde-version "jdee/lisp/jde" "\
Get the version of JDEE.

\(fn)" t nil)

(autoload 'jde-set-global-classpath "jdee/lisp/jde" "\
Set the value of `jde-global-classpath'.
It specifies the -classpath argument for the Java compiler and
interpreter.

\(fn CLASSPATH)" t nil)

(autoload 'jde-build "jdee/lisp/jde" "\
Rebuild the entire project.
This command invokes the function defined by `jde-build-function'.

\(fn)" t nil)

(autoload 'jde-mode "jdee/lisp/jde" "\
Major mode for developing Java applications and applets.
\\{jde-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.java\\'" . jde-mode))

(autoload 'jde-show-help "jdee/lisp/jde" "\
Displays the JDE User's Guide in a browser.

\(fn)" t nil)

(autoload 'jde-compile-jde "jdee/lisp/jde" "\
Byte-compile all uncompiled files of jde.

\(fn)" t nil)

;;;***

;;;### (autoloads (jde-ant-show-options jde-ant-projecthelp jde-ant-build)
;;;;;;  "jdee/lisp/jde-ant" "jdee/lisp/jde-ant.el" (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-ant.el

(autoload 'jde-ant-build "jdee/lisp/jde-ant" "\
Build the current project using Ant.  If interactive, we try to prompt the
  user for certain variables..

\(fn BUILDFILE TARGET &optional INTERACTIVE-ARGS)" t nil)

(autoload 'jde-ant-projecthelp "jdee/lisp/jde-ant" "\
Display Ant project help for the current project.
This will execute the Ant program with the `-projecthelp' switch to output
available targets with their descriptions for the current buildfile. This
function uses the same rules as `jde-ant-build' for finding the buildfile.

\(fn BUILDFILE)" t nil)

(autoload 'jde-ant-show-options "jdee/lisp/jde-ant" "\
Show the JDE Ant Options panel.

\(fn)" t nil)

;;;***

;;;### (autoloads (jde-bookmark-list jde-bookmark-add jde-bookmark-visit)
;;;;;;  "jdee/lisp/jde-bookmark" "jdee/lisp/jde-bookmark.el" (20751
;;;;;;  48872))
;;; Generated autoloads from jdee/lisp/jde-bookmark.el

(autoload 'jde-bookmark-visit "jdee/lisp/jde-bookmark" "\
Visit a class by bookmark name.

\(fn KEY)" t nil)

(autoload 'jde-bookmark-add "jdee/lisp/jde-bookmark" "\
Add the current visited class as a bookmark.

\(fn KEY &optional FQ-CLASS)" t nil)

(autoload 'jde-bookmark-list "jdee/lisp/jde-bookmark" "\
List bookmarks.

\(fn)" t nil)

;;;***

;;;### (autoloads (jde-bsh-quote-expr jde-bsh-run jde-jeval) "jdee/lisp/jde-bsh"
;;;;;;  "jdee/lisp/jde-bsh.el" (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-bsh.el

(autoload 'jde-jeval "jdee/lisp/jde-bsh" "\
Uses the JDEE's instance of the BeanShell
Java interpreter to evaluate the Java expression EXPR.  If the
BeanShell is not running, the JDEE starts an instance. This function
returns any text output by the Java interpreter's standard out or
standard error pipes.  If EVAL-RETURN is non-nil, this function
returns the result of evaluating the Java output as a Lisp
expression.

NO-PRINT-P, if non-nil, don't wrap JAVA-STATEMENT with a `print'
command yeilding the output.  This is going to need to be true
for most things since unless `show()' was invoked and output
prints out, Emacs has nothing to evaluate or report.

\(fn JAVA-STATEMENT &optional EVAL-RETURN NO-PRINT-P)" t nil)

(autoload 'jde-bsh-run "jdee/lisp/jde-bsh" "\
*Starts the JDEE version of the BeanShell.

\(fn)" t nil)

(autoload 'jde-bsh-quote-expr "jdee/lisp/jde-bsh" "\
Add necessary syntax for a beanshell string (parameter) in the current
buffer.  This is useful for quoting a whole buffer or strings with newlines,
etc.  This gives the outside double quotes as well.

NO-PARAM-P if non-nil, don't split string (surround double quotes) using string
concatentation.  The only way to get quotes in strings is to split them up and
concatenate the quote (') char using the plus (+) operator.  This doesn't do
this syntax change.

NO-QUOTE-WRAP-P, if non-nil, don't add double quotes around the whole statement.

\(fn &optional START END NO-PARAM-P NO-QUOTE-WRAP-P)" t nil)

;;;***

;;;### (autoloads (jde-bug-debug-app) "jdee/lisp/jde-bug" "jdee/lisp/jde-bug.el"
;;;;;;  (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-bug.el

(autoload 'jde-bug-debug-app "jdee/lisp/jde-bug" "\
Runs the debugger on the application in the current source buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads (jde-checkstyle jde-checkstyle-customize) "jdee/lisp/jde-checkstyle"
;;;;;;  "jdee/lisp/jde-checkstyle.el" (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-checkstyle.el

(autoload 'jde-checkstyle-customize "jdee/lisp/jde-checkstyle" "\
Set Java style checking options.

\(fn)" t nil)

(autoload 'jde-checkstyle "jdee/lisp/jde-checkstyle" "\
Checks the Java program in the current buffer.
This command invokes the style checker specified by `jde-checkstyle-class'
with the options specif2ied by the JDEE customization variables
that begin with `jde-checkstyle'. If the variable
`jde-checkstyle-read-args' is non-nil, this command reads
additional compilation options from the minibuffer, with
history enabled.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "jdee/lisp/jde-compat" "jdee/lisp/jde-compat.el"
;;;;;;  (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-compat.el

(defconst jde-xemacsp (string-match "XEmacs" (emacs-version)) "\
Non-nil if we are running in the XEmacs environment.")

;;;***

;;;### (autoloads (jde-compile jde-set-compile-options) "jdee/lisp/jde-compile"
;;;;;;  "jdee/lisp/jde-compile.el" (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-compile.el

(autoload 'jde-set-compile-options "jdee/lisp/jde-compile" "\
Sets the compile options.
Enter the options as you would on the command line, e.g.,
-depend -verbose.

\(fn OPTIONS)" t nil)

(autoload 'jde-compile "jdee/lisp/jde-compile" "\
Compile the Java program in the current buffer.
This command invokes the compiler specified by `jde-compiler'
with the options specified by the JDE customization variables
that begin with `jde-compile'. If the variable
`jde-read-compile-args' is non-nil, this command reads
additional compilation options from the minibuffer, with
history enabled. If `jde-compiler' specifies the JDE compile
server, this command uses the compile server. Otherwise, it
uses the compiler executable specified by
`jde-compiler' to compile.

\(fn)" t nil)

;;;***

;;;### (autoloads (jde-customize-option) "jdee/lisp/jde-custom" "jdee/lisp/jde-custom.el"
;;;;;;  (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-custom.el

(defalias 'jde-customize-variable 'jde-customize-option)

(autoload 'jde-customize-option "jdee/lisp/jde-custom" "\
Customize SYMBOL, which must be a JDEE option variable.

\(fn SYMBOL)" t nil)

;;;***

;;;### (autoloads (jde-debug-applet jde-debug jde-db-set-app-args
;;;;;;  jde-db-set-args jde-db-set-debugger) "jdee/lisp/jde-db" "jdee/lisp/jde-db.el"
;;;;;;  (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-db.el

(autoload 'jde-db-set-debugger "jdee/lisp/jde-db" "\
Specify the pathname of the debugger, if an executable, or the
debugger's fully qualified class name, if a class.

\(fn NAME IS-EXECUTABLE)" t nil)

(autoload 'jde-db-set-args "jdee/lisp/jde-db" "\
Specify the arguments (except -classpath) to be passed to the debugger.

\(fn ARGS)" t nil)

(autoload 'jde-db-set-app-args "jdee/lisp/jde-db" "\
Specify the arguments to be passed to the Java application class.

\(fn ARGS)" t nil)

(autoload 'jde-debug "jdee/lisp/jde-db" "\
Run the debugger specified by `jde-debugger' on the Java application
whose source resides in the current buffer. This command determines
the main class of the application either from the variable
`jde-run-application-class' or from the source in the current
buffer. If `jde-run-application-class' does not specify a class, the
main class is assumed to be the class defined by the current source
buffer. This command creates a command buffer for the debug session.

\(fn)" t nil)

(autoload 'jde-debug-applet "jdee/lisp/jde-db" "\
Runs an applet in the jdb debugger. This function prompts you to enter
the path of an html document that displays the applet. If you
do not enter a path, this function next checks
whether `jde-run-applet-doc' specifies a document. If so, it displays
that specified document. Next, it checks whether the current directory
contains any html files. If so, it displays the first html file that
it finds. If if cannot find an html file, it signals an error.  This
function runs appletviewer in jdb to permit debugging. On startup, it
sets a breakpoint in the init method of the class specified by
`jde-run-application-class' or in the class corresponding to the Java
file in the current buffer.

\(fn &optional DOC)" t nil)

;;;***

;;;### (autoloads (jde-ejb-entity-bean-buffer jde-ejb-session-bean-buffer)
;;;;;;  "jdee/lisp/jde-ejb" "jdee/lisp/jde-ejb.el" (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-ejb.el

(autoload 'jde-ejb-session-bean-buffer "jdee/lisp/jde-ejb" "\
Create a new Java buffer containing an EJB session bean class of the same name.
This command also creates buffers with the EJB Home and EJB Remote interfaces
and the XML Deployment descriptor defined
by the jde-ejb templates.  This includes naming the files according
to the EJB naming convention.

\(fn EJB-NAME)" t nil)

(autoload 'jde-ejb-entity-bean-buffer "jdee/lisp/jde-ejb" "\
Create a new Java buffer containing an EJB entity bean class of the same name.
This command also creates buffers with the EJB Home and EJB Remote interfaces
and the XML Deployment descriptor defined
by the jde-ejb templates.  This includes naming the files according
to the EJB naming convention.

\(fn EJB-NAME)" t nil)

;;;***

;;;### (autoloads (jde-gen-exception-buffer jde-gen-exception-buffer-template
;;;;;;  jde-gen-object-methods jde-gen-tostring-return jde-gen-tostring-method-template
;;;;;;  jde-gen-hashcode-body jde-gen-hashcode-method-template jde-gen-equals-return
;;;;;;  jde-gen-equals-method-template jde-gen-equals-parens-around-expression
;;;;;;  jde-gen-equals-trailing-and-operators jde-gen-buffer jde-gen-jfc-app-buffer
;;;;;;  jde-gen-bean-buffer jde-gen-console-buffer jde-gen-interface-buffer
;;;;;;  jde-gen-class-buffer) "jdee/lisp/jde-gen" "jdee/lisp/jde-gen.el"
;;;;;;  (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-gen.el

(autoload 'jde-gen-class-buffer "jdee/lisp/jde-gen" "\
Create a new Java buffer containing a class of the same name.
This command inserts the class template generated by `jde-gen-class'.

\(fn FILE)" t nil)

(autoload 'jde-gen-interface-buffer "jdee/lisp/jde-gen" "\
Create a new Java buffer containing an interface of the same name.
This command inserts the interface template generated by `jde-gen-interface'.
It then moves the point to the location of the first method.

\(fn FILE)" t nil)

(autoload 'jde-gen-console-buffer "jdee/lisp/jde-gen" "\
Create a new Java buffer containing a console class of the same name.
This command inserts the class template generated by `jde-gen-class'.
It then moves the point to the location to the constructor.

\(fn FILE)" t nil)

(autoload 'jde-gen-bean-buffer "jdee/lisp/jde-gen" "\
Create a new Java buffer containing a Java bean of the same name.
This command inserts the class template generated by `jde-gen-bean'.
It then moves the point to the location of the constructor.

\(fn FILE)" t nil)

(autoload 'jde-gen-jfc-app-buffer "jdee/lisp/jde-gen" "\
Create a new Java buffer containing a JFC application class.
This command inserts the class template generated by `jde-gen-jfc-app'.
It then moves the point to the location to the constructor.

\(fn FILE)" t nil)

(autoload 'jde-gen-buffer "jdee/lisp/jde-gen" "\
Create a new Java buffer containing a code template.
This command inserts the specified template at the beginning
of the buffer.

\(fn TEMPLATE FILE)" t nil)

(defvar jde-gen-equals-trailing-and-operators nil "\
Specifies whether the '&&' operators in a generated equals
method are added at the end of the line or at the beginning.  If
this variable is t, the operator will be added at the end of the
line, else on the next line before the comparison.  With
`jde-gen-equals-trailing-and-operators' set to nil:

    return (a == o.a)
	&& (b == o.b)
	&& (s == null ? o.s == null : s.equals(o.s));

Or, with `jde-gen-equals-trailing-and-operators' set to t:

    return (a == o.a) &&
	(b == o.b) &&
	(s == null ? o.s == null : s.equals(o.s));
")

(custom-autoload 'jde-gen-equals-trailing-and-operators "jdee/lisp/jde-gen" t)

(defvar jde-gen-equals-parens-around-expression nil "\
Specifies whether the generated equals expression should be
surrounded by parentheses.
With `jde-gen-equals-trailing-and-operators' set to nil:

    return ((a == o.a)
	    && (b == o.b)
	    && (s == null ? o.s == null : s.equals(o.s)));

Or, with `jde-gen-equals-trailing-and-operators' set to t:

    return ((a == o.a) &&
	    (b == o.b) &&
	    (s == null ? o.s == null : s.equals(o.s)));
")

(custom-autoload 'jde-gen-equals-parens-around-expression "jdee/lisp/jde-gen" t)

(defvar jde-gen-equals-method-template '("'>" "(when jde-gen-create-javadoc" "'(l \"/**\" '> 'n" "    \" * Check if this object is equal (equivalent) to another object.\" '> 'n" "    \" */\" '> 'n" "))" "(jde-gen-method-signature \"public\" \"boolean\" \"equals\" \"Persistable obj\")" "(jde-gen-electric-brace)" "\"if (obj == this) return true;\" '> 'n" "\"if ((obj == null) || !getClass().equals(obj.getClass())) return false;\" '> 'n" "'> 'n" "(jde-gen-equals-return \"obj\" \"o\") '> 'n" "\"}\" '> 'n))") "\
*Template for creating an equals method.
Setting this variable defines a template instantiation command
`jde-gen-equals-method', as a side-effect.")

(custom-autoload 'jde-gen-equals-method-template "jdee/lisp/jde-gen" nil)

(autoload 'jde-gen-equals-return "jdee/lisp/jde-gen" "\
Generate a body of an appropriate override for the
java.lang.Object#equals(Object) function. This function gets the
list of member variables from`jde-parse-get-serializable-members'.

The first optional parameter `parm-name' is the parameter name of
the Object argument of the equals function.  Default is \"obj\".

The second optional parameter `var-name' denotes the variable
name used to cast the \"obj\" argument to. The default is \"o\".

The third optional parameter `class' can be a semantic tag, which
is then used instead of the result of `semantic-current-tag'.

Example:
    class Bean {
	int a;
	long b;
	String s;
    }

Result:
    Bean o = (Bean) obj;

    return (a == o.a)
	&& (b == o.b)
	&& (s == null ? o.s == null : s.equals(o.s));

Or, with `jde-gen-equals-trailing-and-operators' set to t:
    Bean o = (Bean) obj;

    return (a == o.a) &&
	(b == o.b) &&
	(s == null ? o.s == null : s.equals(o.s));

\(fn &optional PARM-NAME VAR-NAME CLASS SUPER-METHOD)" t nil)

(defvar jde-gen-hashcode-method-template '("'>" "(when jde-gen-create-javadoc" "'(l " "\"/**\" '> 'n" "\" * Calculate the hash code for this object.\" '> 'n" "\" * \" '> 'n" "\" * <p>The rules laid out in J. Blosh's Effective Java are used\" '> 'n" "\" * for the hash code calculation.</p>\" '> 'n" "\" * \" '> 'n" "\" * @return the hash code.\" '> 'n" "\" * \" '> 'n" "\" * @see java.lang.Object#hashCode\" '> 'n" "\" */\" '> 'n))" "(jde-gen-method-signature \"public\"\"int\" \"hashCode\" nil)" "(jde-gen-electric-brace)" "(jde-gen-hashcode-body) '> 'n" "\"}\" '> 'n '>") "\
*Template for creating a hashCode method.
Setting this variable defines a template instantiation command
`jde-gen-hashcode-method', as a side-effect.")

(custom-autoload 'jde-gen-hashcode-method-template "jdee/lisp/jde-gen" nil)

(autoload 'jde-gen-hashcode-body "jdee/lisp/jde-gen" "\
Generate a body of a hashCode function.
This function gets the list of member variables of the current
class from `jde-parse-get-serializable-members'.

The first optional parameter `var-name' denotes the variable name used
to calculate the hash code, the default is \"code\".

The second optional parameter `class' can be a semantic tag, which is
then used instead of the result of `semantic-current-tag'.

\(fn &optional VAR-NAME CLASS)" t nil)

(defvar jde-gen-tostring-method-template '("'>" "(when jde-gen-create-javadoc" "'(l " "\"/**\" '> 'n" "\" * Get a string representation of this object.\" '> 'n" "\" * \" '> 'n" "\" * @return a string representation of this object.\" '> 'n" "\" * \" '> 'n" "\" * @see java.lang.Object#toString\" '> 'n" "\" */\" '> 'n))" "(jde-gen-method-signature \"public\" \"String\" \"toString\" \"\")" "(jde-gen-electric-brace)" "(jde-gen-tostring-return) '> 'n" "\"}\" '>") "\
*Template for creating an toString method.
Setting this variable defines a template instantiation
command `jde-gen-tostring-method', as a side-effect.")

(custom-autoload 'jde-gen-tostring-method-template "jdee/lisp/jde-gen" nil)

(autoload 'jde-gen-tostring-return "jdee/lisp/jde-gen" "\
Generate a body of an appropriate override for the
java.lang.Object#toString function. This gets the member variables
of the current class from semantic via `semantic-current-tag'.

\(fn &optional CLASS)" t nil)

(autoload 'jde-gen-object-methods "jdee/lisp/jde-gen" "\
Generates an equals(), a hashCode() and a toString method.

\(fn)" t nil)

(defvar jde-gen-exception-buffer-template (list "(open-line 1) (funcall jde-gen-boilerplate-function)" "(jde-gen-get-package-statement)" "(progn (require 'jde-javadoc) (jde-javadoc-insert-start-block))" "\" * Exception <code>\" (jde-parse-get-buffer-unqualified-class) \"</code>.\" '> 'n" "\" \" (jde-javadoc-insert-empty-line)" "\" * Created: \" (current-time-string) '> 'n" "\" \" (jde-javadoc-insert-empty-line)" "\" \" (jde-gen-save-excursion (jde-javadoc-insert 'tempo-template-jde-javadoc-author-tag))" "\" \" (jde-gen-save-excursion (jde-javadoc-insert 'tempo-template-jde-javadoc-version-tag))" "\" \" (jde-javadoc-insert-end-block)" "\"public class \"" "(jde-parse-get-buffer-unqualified-class)" "\" \" (jde-gen-get-extend-class)" "(jde-gen-electric-brace)" "'p'n" "'> (jde-javadoc-insert-start-block)" "\"* Constructs a new <code>\" (jde-parse-get-buffer-unqualified-class) \"</code> with\" '>'n" "\"* <code>null</code> as its detail message.\" '>'n" "'> (jde-javadoc-insert-end-block)" "(jde-gen-method-signature \"public\" nil (jde-parse-get-buffer-unqualified-class) nil)" "(jde-gen-electric-brace)" "\"}\"'>'n" "'n" "'> (jde-javadoc-insert-start-block)" "\"* Constructs a new <code>\" (jde-parse-get-buffer-unqualified-class) \"</code> with\" '>'n" "\"* the specified detail message.\" '>'n" "'> (jde-javadoc-insert-empty-line)" "\"* @param message the detail message string.\" '> 'n" "'> (jde-javadoc-insert-end-block)" "(jde-gen-method-signature \"public\" nil (jde-parse-get-buffer-unqualified-class) \"String message\")" "(jde-gen-electric-brace)" "\"super(message);\" '> 'n" "\"}\" '> 'n" "'n" "'> (jde-javadoc-insert-start-block)" "\"* Constructs a new <code>\" (jde-parse-get-buffer-unqualified-class) \"</code> with\" '>'n" "\"* the specified cause and a detail message of\" '> 'n" "\"* <code>(cause == null ? null : cause.toString())</code>\" '> 'n" "\"* (which typically contains the class and detail message of cause).\" '> 'n" "'> (jde-javadoc-insert-empty-line)" "\"* @param cause the causing throwable. A null value is permitted\" '> 'n" "\"*     and indicates that the cause is nonexistent or unknown.\" '> 'n" "'> (jde-javadoc-insert-end-block)" "(jde-gen-method-signature \"public\" nil (jde-parse-get-buffer-unqualified-class) \"Throwable cause\")" "(jde-gen-electric-brace)" "\"super(cause == null ? (String) null : cause.toString());\" '> 'n" "\"initCause(cause);\" '> 'n" "\"}\" '> 'n" "'n" "'> (jde-javadoc-insert-start-block)" "\"* Constructs a new <code>\" (jde-parse-get-buffer-unqualified-class) \"</code> with\" '>'n" "\"* the specified cause and message.\" '> 'n" "'> (jde-javadoc-insert-empty-line)" "\"* @param message the detail message string.\" '> 'n" "\"* @param cause the causing throwable. A null value is permitted\" '> 'n" "\"*     and indicates that the cause is nonexistent or unknown.\" '> 'n" "'> (jde-javadoc-insert-end-block)" "(jde-gen-method-signature \"public\" nil (jde-parse-get-buffer-unqualified-class) \"String message,Throwable cause\")" "(jde-gen-electric-brace)" "\"super(message);\" '> 'n" "\"initCause(cause);\" '> 'n" "\"}\" '> 'n" "\"}\" '>" "(if jde-gen-comments (concat \" // \" (jde-parse-get-buffer-unqualified-class)))" "'>'n") "\
*Template for a new exception class.
Setting this variable defines a template instantiation
command `jde-gen-exception', as a side-effect.")

(custom-autoload 'jde-gen-exception-buffer-template "jdee/lisp/jde-gen" nil)

(autoload 'jde-gen-exception-buffer "jdee/lisp/jde-gen" "\
Create a new Java buffer containing an exception class of the same name.
This command inserts the template generated by `jde-gen-exception'.
It then moves the point to the location of the first method.

\(fn FILE)" t nil)

;;;***

;;;### (autoloads (jde-help-browse-jdk-doc jde-help-beanshell) "jdee/lisp/jde-help"
;;;;;;  "jdee/lisp/jde-help.el" (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-help.el

(autoload 'jde-help-beanshell "jdee/lisp/jde-help" "\
Displays the BeanShell documentation.

\(fn)" t nil)

(autoload 'jde-help-browse-jdk-doc "jdee/lisp/jde-help" "\
Displays the JDK doc in a web browser.

\(fn)" t nil)

;;;***

;;;### (autoloads (jde-import-at-point jde-import-organize) "jdee/lisp/jde-import"
;;;;;;  "jdee/lisp/jde-import.el" (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-import.el

(autoload 'jde-import-organize "jdee/lisp/jde-import" "\
Organize import statements of the current Java source buffer.
If optional FORCE is non-nil force reordering even if imports are
already organized.

Imports are organized into groups returned by the function specified
by `jde-import-group-function'.  Groups are inserted in the order they
are found unless `jde-import-sorted-groups' requires that they must be
alphabetically sorted.  In each group imports are sorted by name
alphabetically or in reverse order if `jde-import-reverse-sort-group'
is non-nil.  A blank line is inserted between groups.

Usage:
  \\[jde-import-organize] group and sort import statements.
  \\[universal-argument] \\[jde-import-organize] to force reordering.

The current buffer must be in `jde-mode'.  This command requires a
version of the JDE with the semantic parser.

\(fn &optional FORCE)" t nil)

(autoload 'jde-import-at-point "jdee/lisp/jde-import" "\
Import a class at the current point.
The fully qualified class is received from user input.

\(fn CLASS)" t nil)

;;;***

;;;### (autoloads (jde-java-font-lock-setup-keywords) "jdee/lisp/jde-java-font-lock"
;;;;;;  "jdee/lisp/jde-java-font-lock.el" (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-java-font-lock.el

(autoload 'jde-java-font-lock-setup-keywords "jdee/lisp/jde-java-font-lock" "\
Setup font lock keywords in `java-font-lock-keywords-4'.
If optional REBUILD flag is non-nil create a new cache of regular
expressions.

\(fn &optional REBUILD)" t nil)

;;;***

;;;### (autoloads (jde-java-properties-validate jde-java-properties-mode)
;;;;;;  "jdee/lisp/jde-java-properties" "jdee/lisp/jde-java-properties.el"
;;;;;;  (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-java-properties.el

(autoload 'jde-java-properties-mode "jdee/lisp/jde-java-properties" "\
Major mode for Java properties files buffer.

\(fn)" t nil)

(autoload 'jde-java-properties-validate "jdee/lisp/jde-java-properties" "\
Determine whether or not the properties file conforms to the Sun
java.util.Properties format.  Only the first invalid line is found.

GOTO indicates whether or not to put the point at the first invalid line
found.

\(fn &optional GOTO)" t nil)

;;;***

;;;### (autoloads (jde-javadoc-enable-menu-p jde-javadoc-remove jde-javadoc-checkdoc
;;;;;;  jde-javadoc-checkdoc-at-line jde-javadoc-remdoc-at-line jde-javadoc-autodoc-at-line
;;;;;;  jde-javadoc-customize jde-javadoc-checker-quit jde-javadoc-checker-fix
;;;;;;  jde-javadoc-checker-next jde-javadoc-checker-previous) "jdee/lisp/jde-javadoc"
;;;;;;  "jdee/lisp/jde-javadoc.el" (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-javadoc.el

(autoload 'jde-javadoc-checker-previous "jdee/lisp/jde-javadoc" "\
Go to the previous tag with doc errors.

\(fn)" t nil)

(autoload 'jde-javadoc-checker-next "jdee/lisp/jde-javadoc" "\
Goto the next tag with doc errors.

\(fn)" t nil)

(autoload 'jde-javadoc-checker-fix "jdee/lisp/jde-javadoc" "\
Fix documentation of checked tag.
Used in `jde-javadoc-checker-report-mode'.

\(fn)" t nil)

(autoload 'jde-javadoc-checker-quit "jdee/lisp/jde-javadoc" "\
Quit the `jde-javadoc-checker' report buffer.
Used in `jde-javadoc-checker-report-mode'.

\(fn)" t nil)

(autoload 'jde-javadoc-customize "jdee/lisp/jde-javadoc" "\
Show the jde-javadoc options panel.

\(fn)" t nil)

(autoload 'jde-javadoc-autodoc-at-line "jdee/lisp/jde-javadoc" "\
Update javadoc comment block for declaration at current line.

Uses the semantic bovinator parser table to find declarations (see
`jde-javadoc-nonterminal-at-line').

BEFORE EXECUTING THE COMMAND, THE POINT MUST BE LOCATED AT THE FIRST
LINE OF THE CLASS OR METHOD DECLARATION.  IF NOT RESULT IS UNCERTAIN.

In the following examples, point is located at the beginning of the
line, before the word 'public' (but it could be anywhere on this
line):

1- Class example:
   -------------

-|-  public class MyClass
       extends MySuperClass implements Runnable, java.io.Serializable
     {
       ...

\\[jde-javadoc-autodoc-at-line] inserts:

+    /**
+     * Describe class <code>MyClass</code> here.
+     *
+     * @author \"David Ponce\" <david.ponce@wanadoo.fr>
+     * @version 1.0
+     * @since 1.0
+     * @see MySuperClass
+     * @see Runnable
+     * @see java.io.Serializable
+     */
     public class MyClass
       extends MySuperClass implements Runnable, java.io.Serializable
     {
       ...

2- Method example:
   --------------

-|-  public
     void   myMethod( int  x,  int y )
       throws Exception
     {
       ...

\\[jde-javadoc-autodoc-at-line] inserts:

+    /**
+     * Describe <code>myMethod</code> method here.
+     *
+     * @param x an <code>int</code> value
+     * @param y a <code>long</code> value
+     * @exception Exception if an error occurs
+     */
     public
     void   myMethod( int  x,  long y )
       throws Exception
     {
       ...

3- Field example:
   --------------

-|-  private static final int SIZE = 10;

\\[jde-javadoc-autodoc-at-line] inserts:

+    /**
+     * Describe constant <code>SIZE</code> here.
+     */
     private static final int SIZE = 10;


`tempo' templates are used for each category of javadoc line.  The
following templates are currently defined and fully customizable (see
`tempo-define-template' for the different items that can be used in a
tempo template):

- - `jde-javadoc-author-tag-template'
- - `jde-javadoc-describe-class-template'
- - `jde-javadoc-describe-constructor-template'
- - `jde-javadoc-describe-interface-template'
- - `jde-javadoc-describe-method-template'
- - `jde-javadoc-describe-field-template'
- - `jde-javadoc-exception-tag-template'
- - `jde-javadoc-param-tag-template'
- - `jde-javadoc-return-tag-template'
- - `jde-javadoc-version-tag-template'

For example if you customize `jde-javadoc-describe-class-template'
with the following value:

'(\"* \" (P \"Class description: \"))

you will be asked to enter the class description in the minibuffer.
See also the `jde-javadoc-field-type', `jde-javadoc-a' and
`jde-javadoc-code' helper functions.

\(fn)" t nil)

(autoload 'jde-javadoc-remdoc-at-line "jdee/lisp/jde-javadoc" "\
Remove javadoc comment block for declaration at current line.
Require confirmation if optional NOCONFIRM is non-nil.
Return non-nil if done.
This uses `jde-javadoc-nonterminal-at-line' to find declarations.

\(fn &optional NOCONFIRM)" t nil)

(autoload 'jde-javadoc-checkdoc-at-line "jdee/lisp/jde-javadoc" "\
Check javadoc comment block of declaration at current line.

Uses the semantic bovinator parser table to find declarations (see
`jde-javadoc-nonterminal-at-line').

BEFORE EXECUTING THE COMMAND, THE POINT MUST BE LOCATED AT THE FIRST
LINE OF THE CLASS OR METHOD DECLARATION.  IF NOT RESULT IS UNCERTAIN.

\(fn)" t nil)

(autoload 'jde-javadoc-checkdoc "jdee/lisp/jde-javadoc" "\
Check doc comments of tags in the current buffer.
Report the next tag with documentation errors.

\(fn)" t nil)

(autoload 'jde-javadoc-remove "jdee/lisp/jde-javadoc" "\
Remove all Javadoc from the region (if one is active) or the buffer.
START, the start position in the buffer.
END, the end position in the buffer.

\(fn START END)" t nil)

(autoload 'jde-javadoc-enable-menu-p "jdee/lisp/jde-javadoc" "\
Return non-nil if corresponding doc menu item is enabled.
That is point is on the first line of a class, method, or field
definition.

\(fn)" nil nil)

;;;***

;;;### (autoloads (jde-javadoc-make-buffer jde-javadoc-make jde-javadoc-make-internal)
;;;;;;  "jdee/lisp/jde-javadoc-gen" "jdee/lisp/jde-javadoc-gen.el"
;;;;;;  (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-javadoc-gen.el

(autoload 'jde-javadoc-make-internal "jdee/lisp/jde-javadoc-gen" "\
Generates javadoc for the current project if MAKE-PACKAGES-P
and `jde-javadoc-gen-packages' are nonnil; otherwise, make doc
for the current buffer. This command runs the
currently selected javadoc's program to generate the documentation.
It uses `jde-get-jdk-dir' to determine the location of
the currentlyh selected JDK. The variable `jde-global-classpath' specifies
the javadoc -classpath argument. The variable `jde-sourcepath'
specifies the javadoc  -sourcepath argument. You can specify all
other javadoc options via JDE customization variables. To specify the
options, select Project->Options->Javadoc from the JDE menu. Use
`jde-javadoc-gen-packages' to specify the packages, classes, or source
files for which you want to generate javadoc. If this variable is nil,
this command generates javadoc for the Java source file in the current
buffer. If `jde-javadoc-display-doc' is nonnil, this command displays
the generated documentation in a browser.

\(fn &optional MAKE-PACKAGES-P)" nil nil)

(autoload 'jde-javadoc-make "jdee/lisp/jde-javadoc-gen" "\
Generates javadoc for the current project. This command runs the
currently selected JDK's javadoc program to generate the documentation.
It uses `jde-get-jdk-dir' to determine the location of the currently
selected JDK. The variable `jde-global-classpath' specifies the javadoc
-classpath argument. The variable `jde-sourcepath'
specifies the javadoc  -sourcepath argument. You can specify all
other javadoc options via JDE customization variables. To specify the
options, select Project->Options->Javadoc from the JDE menu. Use
`jde-javadoc-gen-packages' to specify the packages, classes, or source
files for which you want to generate javadoc. If this variable is nil,
this command generates javadoc for the Java source file in the current
buffer. If `jde-javadoc-display-doc' is nonnil, this command displays
the generated documentation in a browser.

\(fn)" t nil)

(autoload 'jde-javadoc-make-buffer "jdee/lisp/jde-javadoc-gen" "\
Generates javadoc for the current buffer. This command runs the
currently selected JDK's javadoc program to generate the
documentation. It uses `jde-get-jdk-dir' to determine the location of the currently
selected JDK.  The variable `jde-global-classpath' specifies the
javadoc -classpath argument. The variable `jde-sourcepath' specifies
the javadoc -sourcepath argument. You can specify all other javadoc
options via JDE customization variables. To specify the options,
select Project->Options->Javadoc from the JDE menu. Use
`jde-javadoc-make' to generate doc for the files and packages
specified by `jde-javadoc-gen-packages'. If `jde-javadoc-display-doc'
is nonnil, this command displays the generated documentation in a
browser.

\(fn)" t nil)

;;;***

;;;### (autoloads (jde-junit-show-options jde-junit-run jde-junit-add-test-to-suite
;;;;;;  jde-junit4-test-class-buffer jde-junit-test-class-buffer
;;;;;;  jde-junit4-test-class jde-junit-test-class) "jdee/lisp/jde-junit"
;;;;;;  "jdee/lisp/jde-junit.el" (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-junit.el

(autoload 'jde-junit-test-class "jdee/lisp/jde-junit" "\
Instantiate a test class template.

\(fn)" t nil)

(autoload 'jde-junit4-test-class "jdee/lisp/jde-junit" "\
Instantiate a test class template.

\(fn)" t nil)

(autoload 'jde-junit-test-class-buffer "jdee/lisp/jde-junit" "\
Create a buffer containing a skeleton unit test class having the same name as the
root name of the buffer. This command prompts you to enter the file name
of the test class. It assumes that the file name has the form CLASSTest.java
where CLASS is the name of the class to be tested, e.g., MyAppTest.java. Use
`jde-gen-junit-add-test-to-suite' to add tests to the test suite. Use of
tests generated with this template requires the JUnit test framework. For
more information, see http://www.junit.org.

\(fn)" t nil)

(autoload 'jde-junit4-test-class-buffer "jdee/lisp/jde-junit" "\
Create a buffer containing a skeleton unit test class having
the same name as the root name of the buffer. This command
prompts you to enter the file name of the test class. It assumes
that the file name has the form CLASSTest.java where CLASS is the
name of the class to be tested, e.g., MyAppTest.java. Use of
tests generated with this template requires the JUnit test
framework. For more information, see http://www.junit.org.

\(fn)" t nil)

(autoload 'jde-junit-add-test-to-suite "jdee/lisp/jde-junit" "\
Instantiate an addTest method.

\(fn)" t nil)

(autoload 'jde-junit-run "jdee/lisp/jde-junit" "\
Starts junit testrunner with buffer corresponding class name.

\(fn)" t nil)

(autoload 'jde-junit-show-options "jdee/lisp/jde-junit" "\
Show the JDE JUnit Options panel.

\(fn)" t nil)

;;;***

;;;### (autoloads (jde-make-show-options jde-make) "jdee/lisp/jde-make"
;;;;;;  "jdee/lisp/jde-make.el" (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-make.el

(autoload 'jde-make "jdee/lisp/jde-make" "\
Run the make program specified by `jde-make-program' with the
command-line arguments specified by `jde-make-args'. If
`jde-read-make-args' is nonnil, this command also prompts you to enter
make arguments in the minibuffer and passes any arguments that you
enter to the make program along with the arguments specified by
`jde-make-args'.

\(fn)" t nil)

(autoload 'jde-make-show-options "jdee/lisp/jde-make" "\
Show the JDE Make Options panel.

\(fn)" t nil)

;;;***

;;;### (autoloads (jde-find-class-source jde-read-class) "jdee/lisp/jde-open-source"
;;;;;;  "jdee/lisp/jde-open-source.el" (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-open-source.el

(autoload 'jde-read-class "jdee/lisp/jde-open-source" "\
Select a class interactively.  PROMPT is used to prompt the user for the
first class name, FQ-PROMPT is used only if the class name expands into more
than one fully qualified name.

PROMPT text used to prompt the user for the simple class name, or
\"Class\" as the default.  Don't add the colon/space at the end
of this prompt as a default will be added if it exists.

FQ-PROMPT text used to prompt the fully qualified class name, or
\"Select qualified class\" as the default.  Don't add the
colon/space at the end of this prompt as a default will be added
if it exists.

THIS-CLASS-P, if non-nil, use the current class name if no class name at point
and we are in a JDEE buffer.

CONFIRM-FQ-P, if non-nil, confirm the class name even when there
is only one unique fully qualified class found for the simple
class name (that is the class without the package part in the
name).

NO-CONFIRM-NFQ-P, if non-nil, don't confirm the class to check for fully
qualified classes if it is obtainable from either the point or this class (see
THIS-CLASS-P).  If obtained from the point, then the class name is parsed with
`jde-parse-class-name' for the input.

VALIDATE-FN is a function to validate the class.  This function takes an
argument the output from `jde-parse-class-name' given from the first user input
class name query.  The function should raise an error if there is anything
wrong with the class.  If this is `nil', then no validate is done.

When called interactively, select the class and copy it to the kill ring.

\(fn &optional PROMPT FQ-PROMPT THIS-CLASS-P CONFIRM-FQ-P NO-CONFIRM-NFQ-P VALIDATE-FN)" t nil)

(autoload 'jde-find-class-source "jdee/lisp/jde-open-source" "\
*Find the source file for a specified fully qualified class.
Calls `jde-find-class-source-file' to do the search.
If it finds the source file, it opens the file in a buffer.

\(fn CLASS &optional OTHER-WINDOW)" t nil)

;;;***

;;;### (autoloads (jde-package-update) "jdee/lisp/jde-package" "jdee/lisp/jde-package.el"
;;;;;;  (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-package.el

(autoload 'jde-package-update "jdee/lisp/jde-package" "\
Create or update the package statement in the current Java source
file buffer based on the file's location relative to the root of
the package directory as specified by one of the entries in
`jde-package-search-classpath-variables' or `jde-sourcepath'.
If these variables do not specify the root of the package directory,
this command does nothing. This command signals an error if the
 major mode of the current buffer is not `jde-mode'.

\(fn)" t nil)

;;;***

;;;### (autoloads (jde-parse-get-buffer-class) "jdee/lisp/jde-parse"
;;;;;;  "jdee/lisp/jde-parse.el" (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-parse.el

(autoload 'jde-parse-get-buffer-class "jdee/lisp/jde-parse" "\
Get the fully qualified name of the class of this buffer.

NO-PACKAGE-P, if non-`nil', return only the class name (sans
package name), otherwise, include the package name.

If called interactively, add the name in the mini-buffer.

\(fn &optional NO-PACKAGE-P)" t nil)

;;;***

;;;### (autoloads (jde-member-to-attribute jde-camel-to-lisp jde-camel-to-c-const
;;;;;;  jde-camel-to-sql jde-hungarian-to-reverse-camel-notation)
;;;;;;  "jdee/lisp/jde-parse-expr" "jdee/lisp/jde-parse-expr.el"
;;;;;;  (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-parse-expr.el

(autoload 'jde-hungarian-to-reverse-camel-notation "jdee/lisp/jde-parse-expr" "\
Converts Hungarian (i.e. m_sMyApp) to reverse camel notation (i.e. myApp).
Hungarian notation is used, for example, in most Microsoft visual C++ code
whereas reverse camel notation is used as the Sun Java standard style.

START the start of the buffer region
END is the end of the buffer region
LOCAL-REPLACEMENT-P, if non-nil, replace expecting a local variable
replacement.  This adds a `this.' to each replacment.

\(fn START END LOCAL-REPLACEMENT-P)" t nil)

(autoload 'jde-camel-to-sql "jdee/lisp/jde-parse-expr" "\
Convert from reverse camel notation to the SQL underscore convention.

\(fn START END)" t nil)

(autoload 'jde-camel-to-c-const "jdee/lisp/jde-parse-expr" "\
Convert from reverse camel notation to the C constant convention.

\(fn START END)" t nil)

(autoload 'jde-camel-to-lisp "jdee/lisp/jde-parse-expr" "\
Convert from reverse camel notation to the lisp symbol convention.

\(fn START END)" t nil)

(autoload 'jde-member-to-attribute "jdee/lisp/jde-parse-expr" "\
Convert Java member to a getter or setter syntax.

MEMBER-NAME is member to convret.  This is taken as the current word at point
when called interactively.

GETTERP, if non-nil, make it a getter, otherwise make it a setter.  If
\\[universal-argument] is used while calling interactively, then make it a
setter, otherwise, make a getter.

\(fn MEMBER-NAME GETTERP)" t nil)

;;;***

;;;### (autoloads (jde-describe-path jde-project-create-project)
;;;;;;  "jdee/lisp/jde-project" "jdee/lisp/jde-project.el" (20751
;;;;;;  48872))
;;; Generated autoloads from jdee/lisp/jde-project.el

(autoload 'jde-project-create-project "jdee/lisp/jde-project" "\
Creates a JDE project.

\(fn)" t nil)

(autoload 'jde-describe-path "jdee/lisp/jde-project" "\
Prints and gives file existance for each path.
PATH-TYPE is either `global classpath' for `jde-global-classpath' or
`source path' for `jde-sourcepath'.

\(fn PATH-TYPE &optional BUF)" t nil)

;;;***

;;;### (autoloads (jde-create-new-project jde-save-project jde-open-project-file)
;;;;;;  "jdee/lisp/jde-project-file" "jdee/lisp/jde-project-file.el"
;;;;;;  (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-project-file.el

(autoload 'jde-open-project-file "jdee/lisp/jde-project-file" "\
Opens the project file for the Java source file in the
current buffer.

\(fn)" t nil)

(autoload 'jde-save-project "jdee/lisp/jde-project-file" "\
Saves source file buffer options in one or more project files.
This command provides an easy way to create and update a project file
for a Java project. Simply open a source file, set the desired
options, using the JDE Options menu, then save the settings in the
project file, using this command.  Now, whenever you open a source
file from the same directory tree, the saved settings will be restored
for that file.

\(fn)" t nil)

(autoload 'jde-create-new-project "jdee/lisp/jde-project-file" "\
Creates a new JDE project file in directory NEW-DIR, saving any
current customized variables.  If a project file already exists in the
given directory, the project is simply re-saved.  This functions the
same as `jde-save-project' when no project files can be found for the
current source file.  But, if there already exist projects somewhere
along the path, this command unconditionally creates a project file in
the directory specified, thus allowing the user to create and maintain
hierarchical projects.

\(fn NEW-DIR)" t nil)

;;;***

;;;### (autoloads (jde-replace-fully-qualified-class-at-point jde-rename-class)
;;;;;;  "jdee/lisp/jde-refactor" "jdee/lisp/jde-refactor.el" (20751
;;;;;;  48872))
;;; Generated autoloads from jdee/lisp/jde-refactor.el

(autoload 'jde-rename-class "jdee/lisp/jde-refactor" "\
Rename the current class to another class name.  This does a class name
string replace, changes the buffer name, and changes the file name.

\(fn NEW-CLASS-NAME)" t nil)

(autoload 'jde-replace-fully-qualified-class-at-point "jdee/lisp/jde-refactor" "\
Replace the unqualified class at the current point with the fully qualified
class.

\(fn CLASS)" t nil)

;;;***

;;;### (autoloads (jde-run-applet jde-run jde-run-set-applet-doc
;;;;;;  jde-run-set-applet-viewer jde-run-set-app-args jde-run-set-args
;;;;;;  jde-run-set-app) "jdee/lisp/jde-run" "jdee/lisp/jde-run.el"
;;;;;;  (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-run.el

(autoload 'jde-run-set-app "jdee/lisp/jde-run" "\
Specify the name of the application class to run.

\(fn APP)" t nil)

(autoload 'jde-run-set-args "jdee/lisp/jde-run" "\
Specify arguments to be passed to the Java vm.
This command serves as an alternative to using the JDE Run Options
panel to specify command-line arguments for the Java interpreter.

\(fn ARGS)" t nil)

(autoload 'jde-run-set-app-args "jdee/lisp/jde-run" "\
Specify the arguments to be passed to the Java application class.
This command provides an alternative to using the JDE Run Options panel
to specify command-line arguments to pass to the application when starting
the application.

\(fn ARGS)" t nil)

(autoload 'jde-run-set-applet-viewer "jdee/lisp/jde-run" "\
Sets the viewer to be used to view an applet. The default is
appletviewer.

\(fn VIEWER)" t nil)

(autoload 'jde-run-set-applet-doc "jdee/lisp/jde-run" "\
Specify the doc to be used to view an applet.
This command provides an alternative to using the JDE Options
panel to specifying the applet document.

\(fn DOC)" t nil)

(autoload 'jde-run "jdee/lisp/jde-run" "\
Run the Java application specified by `jde-run-executable', if
not the null string. Otherwise run the class specified by
`jde-run-application-class', if non-null; otherwise the class in the
current buffer. Specifying a prefix argument, e.g., C-u C-c C-v C-r,
causes this command to prompt you to enter arguments to be passed to
the application's main method.  Specifying a minus prefix argument,
i.e., C-u - C-c C-v C-r, causes this command to prompt you to also
enter the name of the application's main class.  Note that you can use
`jde-run-read-app-args' to cause the command to prompt you for
application arguments by default (i.e., without having to specify a
prefix argument). This command creates a comint buffer to allow you to
interact with the program.

\(fn PREFIX)" t nil)

(autoload 'jde-run-applet "jdee/lisp/jde-run" "\
Runs an applet. This function prompts you to enter the path of an
html document that displays the applet. If you enter return without
specifying a document, this function next checks whether
`jde-run-applet-doc' specifies a document. If so, it displays that
specified document. Next, it checks whether the current directory
contains any html files. If the current directory contains an html
file with the same root name as the Java file in the current buffer,
it displays the file. If not, it displays the first html file that it
finds in the current directory. If if cannot find an html file, it
signals an error.  This function uses the viewer specified by
`jde-run-applet-viewer' to display the specified document. Note that
if you run two html applet files successively with the same name, you
must kill the buffer created to run the first file before running the
second file. Otherwise, this command will simply redisplay the first
file.

\(fn &optional DOC)" t nil)

;;;***

;;;### (autoloads (jde-stat-loc-report-directory jde-stat-loc-report-project
;;;;;;  jde-stat-loc-report) "jdee/lisp/jde-stat" "jdee/lisp/jde-stat.el"
;;;;;;  (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-stat.el

(autoload 'jde-stat-loc-report "jdee/lisp/jde-stat" "\
Generates a report showing the number of code, comment,
javadoc, and blank lines in the current Java source buffer. Optionally
a total count could be passed to be displayes, as well as the number of
processed files.

\(fn &optional COUNT &optional TOTAL-FILES)" t nil)

(autoload 'jde-stat-loc-report-project "jdee/lisp/jde-stat" "\
Generates a report showing the number of code, comment,
javadoc, and blank lines in all the java files in the current
directory and subdirectories. This method will kill any
buffer containing a java file contained in dir.

\(fn DIR)" t nil)

(autoload 'jde-stat-loc-report-directory "jdee/lisp/jde-stat" "\
Generates a report showing the number of code, comment,
javadoc, and blank lines in all the java files in the current
directory. This method will kill any buffer containing a java file
contained in dir.

\(fn DIR)" t nil)

;;;***

;;;### (autoloads (jde-htmlize-code jde-exception-goto jde-require)
;;;;;;  "jdee/lisp/jde-util" "jdee/lisp/jde-util.el" (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-util.el

(autoload 'jde-require "jdee/lisp/jde-util" "\
Require FEATURE, either pre-installed or from the distribution.
 That is, first try to load the FEATURE library. Then try to load the
 jde-FEATURE library from the JDEE's distribution.
 Signal an error if FEATURE can't be found.

\(fn FEATURE)" nil nil)

(autoload 'jde-exception-goto "jdee/lisp/jde-util" "\
Go to the Java source file and line indicated by an exception stack trace.

\(fn)" t nil)

(autoload 'jde-htmlize-code "jdee/lisp/jde-util" "\
Write the current code region as an HTML document.
Line numbers are added as well.

See `jde-htmlize-code-destinations'.

\(fn START END &optional NO-LINE-NUMBERS-P)" t nil)

;;;***

;;;### (autoloads (jde-which-method-mode) "jdee/lisp/jde-which-method"
;;;;;;  "jdee/lisp/jde-which-method.el" (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-which-method.el

(defvar jde-which-method-mode t "\
Enables the JDE's which method mode.
When which method mode is enabled, the current method name is
displayed in the mode line.")

(custom-autoload 'jde-which-method-mode "jdee/lisp/jde-which-method" t)

;;;***

;;;### (autoloads (jde-xref-customize jde-xref-update jde-xref-list-uncalled-functions
;;;;;;  jde-xref-display-call-tree jde-xref-next-caller jde-xref-first-caller
;;;;;;  jde-xref-make-xref-db) "jdee/lisp/jde-xref" "jdee/lisp/jde-xref.el"
;;;;;;  (20751 48872))
;;; Generated autoloads from jdee/lisp/jde-xref.el

(autoload 'jde-xref-make-xref-db "jdee/lisp/jde-xref" "\
Create a database of caller to callee (and the reverse) from the
classes in `jde-built-class-path' and store the data in the location
specified by `jde-xref-db-file'

\(fn)" t nil)

(autoload 'jde-xref-first-caller "jdee/lisp/jde-xref" "\
Put the list of who calls the current function on the stack and
display the first caller.  Subsequent callers are displayed through
`jde-xref-show-next-caller'.  STRICT should be true if the callers of
interfaces to a function, or calls to a superclass which may result in
a virtual function call to the subclass should not be considered.  In
other words, if STRICT is true, then only calls that are definitely to
the requested function are considered.

\(fn STRICT)" t nil)

(autoload 'jde-xref-next-caller "jdee/lisp/jde-xref" "\
If there are items still on the caller stack, pop the first one off
and show it

\(fn)" t nil)

(autoload 'jde-xref-display-call-tree "jdee/lisp/jde-xref" "\
Display an interactive call tree of which function call the current
  function, which can be expanded outward.  STRICT should be true if
  the callers of interfaces to a function, or calls to a superclass
  which may result in a virtual function call to the subclass should
  not be considered.  In other words, if STRICT is true, then only
  calls that are definitely to the requested function are considered.

\(fn STRICT)" t nil)

(autoload 'jde-xref-list-uncalled-functions "jdee/lisp/jde-xref" "\
Displays a simple list of function that are never called, at least
not directly.  Do not assume that this means this code can never be
reached, since reflection could always call any method.  Use this list
and your best judgement to figure out what are good candidates for
code cleanup.  STRICT should be true if the callers of interfaces to a
function, or calls to a superclass which may result in a virtual
function call to the subclass should not be considered.  In other
words, if STRICT is true, then only calls that are definitely to the
requested function are considered.  This function could take a
while. If it does, you might want to consider increasing
`jde-xref-cache-size'.

\(fn STRICT)" t nil)

(autoload 'jde-xref-update "jdee/lisp/jde-xref" "\
Update the caller table after a recompile.  This can be called by
the user when they recompile outside of emacs.  It will update the
call list of all files modified in emacs

\(fn &rest IGNORED)" t nil)

(autoload 'jde-xref-customize "jdee/lisp/jde-xref" "\
Display the customization buffer for the xref package.

\(fn)" t nil)

;;;***

;;;### (autoloads (inferior-js-mode switch-to-js js-load-file-and-go
;;;;;;  js-load-file js-send-buffer-and-go js-send-buffer js-send-last-sexp
;;;;;;  js-send-last-sexp-and-go js-send-region-and-go js-send-region
;;;;;;  run-js) "js-comint/js-comint" "js-comint/js-comint.el" (20751
;;;;;;  44130))
;;; Generated autoloads from js-comint/js-comint.el

(autoload 'run-js "js-comint/js-comint" "\
Run an inferior Javascript process, input and output via buffer `*js*'.
If there is a process already running in `*js*', switch to that buffer.
With argument, allows you to edit the command line (default is value
of `inferior-js-program-command').
Runs the hook `inferior-js-mode-hook' (after the `comint-mode-hook'
is run).
\(Type \\[describe-mode] in the process buffer for a list of commands.)

\(fn CMD &optional DONT-SWITCH-P)" t nil)

(autoload 'js-send-region "js-comint/js-comint" "\
Send the current region to the inferior Javascript process.

\(fn START END)" t nil)

(autoload 'js-send-region-and-go "js-comint/js-comint" "\
Send the current region to the inferior Javascript process.

\(fn START END)" t nil)

(autoload 'js-send-last-sexp-and-go "js-comint/js-comint" "\
Send the previous sexp to the inferior Js process.

\(fn)" t nil)

(autoload 'js-send-last-sexp "js-comint/js-comint" "\
Send the previous sexp to the inferior Javascript process.

\(fn)" t nil)

(autoload 'js-send-buffer "js-comint/js-comint" "\
Send the buffer to the inferior Javascript process.

\(fn)" t nil)

(autoload 'js-send-buffer-and-go "js-comint/js-comint" "\
Send the buffer to the inferior Javascript process.

\(fn)" t nil)

(autoload 'js-load-file "js-comint/js-comint" "\
Load a file in the javascript interpreter.

\(fn FILENAME)" t nil)

(autoload 'js-load-file-and-go "js-comint/js-comint" "\
Load a file in the javascript interpreter.

\(fn FILENAME)" t nil)

(autoload 'switch-to-js "js-comint/js-comint" "\
Switch to the javascript process buffer.
With argument, position cursor at end of buffer.

\(fn EOB-P)" t nil)

(autoload 'inferior-js-mode "js-comint/js-comint" "\
Major mode for interacting with an inferior javascript process.

The following commands are available:
\\{inferior-js-mode-map}

A javascript process can be fired up with M-x run-js.

Customization: Entry to this mode runs the hooks on comint-mode-hook and
inferior-js-mode-hook (in that order).

You can send text to the inferior Javascript process from othber buffers containing
Javascript source.
    switch-to-js switches the current buffer to the Javascript process buffer.
    js-send-region sends the current region to the Javascript process.


\(fn)" t nil)

;;;***

;;;### (autoloads (js2-imenu-extras-setup) "js2-mode/js2-imenu-extras"
;;;;;;  "js2-mode/js2-imenu-extras.el" (20751 42329))
;;; Generated autoloads from js2-mode/js2-imenu-extras.el

(autoload 'js2-imenu-extras-setup "js2-mode/js2-imenu-extras" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads (js2-mode) "js2-mode/js2-mode" "js2-mode/js2-mode.el"
;;;;;;  (20751 42329))
;;; Generated autoloads from js2-mode/js2-mode.el
 (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(autoload 'js2-mode "js2-mode/js2-mode" "\
Major mode for editing JavaScript code.

\\{js2-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (multi-web-mode) "multi-web-mode/multi-web-mode"
;;;;;;  "multi-web-mode/multi-web-mode.el" (20751 44180))
;;; Generated autoloads from multi-web-mode/multi-web-mode.el

(autoload 'multi-web-mode "multi-web-mode/multi-web-mode" "\
Enables the multi web mode chunk detection and indentation

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (mc/edit-beginnings-of-lines mc/edit-ends-of-lines
;;;;;;  mc/edit-lines) "multiple-cursors/mc-edit-lines" "multiple-cursors/mc-edit-lines.el"
;;;;;;  (20751 44397))
;;; Generated autoloads from multiple-cursors/mc-edit-lines.el

(autoload 'mc/edit-lines "multiple-cursors/mc-edit-lines" "\
Add one cursor to each line of the active region.
Starts from mark and moves in straight down or up towards the
line point is on.

\(fn)" t nil)

(autoload 'mc/edit-ends-of-lines "multiple-cursors/mc-edit-lines" "\
Add one cursor to the end of each line in the active region.

\(fn)" t nil)

(autoload 'mc/edit-beginnings-of-lines "multiple-cursors/mc-edit-lines" "\
Add one cursor to the beginning of each line in the active region.

\(fn)" t nil)

;;;***

;;;### (autoloads (mc/insert-numbers) "multiple-cursors/mc-insert-numbers"
;;;;;;  "multiple-cursors/mc-insert-numbers.el" (20751 44397))
;;; Generated autoloads from multiple-cursors/mc-insert-numbers.el

(autoload 'mc/insert-numbers "multiple-cursors/mc-insert-numbers" "\


\(fn ARG)" t nil)

;;;***

;;;### (autoloads (mc/mark-sgml-tag-pair mc/mark-all-symbols-like-this-in-defun
;;;;;;  mc/mark-all-words-like-this-in-defun mc/mark-all-like-this-in-defun
;;;;;;  mc/mark-all-like-this-dwim mc/mark-more-like-this-extended
;;;;;;  mc/mark-all-in-region mc/mark-all-symbols-like-this mc/mark-all-words-like-this
;;;;;;  mc/mark-all-like-this mc/unmark-previous-like-this mc/unmark-next-like-this
;;;;;;  mc/mark-previous-lines mc/mark-next-lines mc/mark-previous-symbol-like-this
;;;;;;  mc/mark-previous-word-like-this mc/mark-previous-like-this
;;;;;;  mc/mark-next-symbol-like-this mc/mark-next-word-like-this
;;;;;;  mc/mark-next-like-this) "multiple-cursors/mc-mark-more" "multiple-cursors/mc-mark-more.el"
;;;;;;  (20751 44397))
;;; Generated autoloads from multiple-cursors/mc-mark-more.el

(autoload 'mc/mark-next-like-this "multiple-cursors/mc-mark-more" "\
Find and mark the next part of the buffer matching the currently active region
With negative ARG, delete the last one instead.
With zero ARG, skip the last one and mark next.

\(fn ARG)" t nil)

(autoload 'mc/mark-next-word-like-this "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/mark-next-symbol-like-this "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/mark-previous-like-this "multiple-cursors/mc-mark-more" "\
Find and mark the previous part of the buffer matching the currently active region
With negative ARG, delete the last one instead.
With zero ARG, skip the last one and mark next.

\(fn ARG)" t nil)

(autoload 'mc/mark-previous-word-like-this "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/mark-previous-symbol-like-this "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/mark-next-lines "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/mark-previous-lines "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/unmark-next-like-this "multiple-cursors/mc-mark-more" "\
Deselect next part of the buffer matching the currently active region.

\(fn ARG)" t nil)

(autoload 'mc/unmark-previous-like-this "multiple-cursors/mc-mark-more" "\
Deselect prev part of the buffer matching the currently active region.

\(fn ARG)" t nil)

(autoload 'mc/mark-all-like-this "multiple-cursors/mc-mark-more" "\
Find and mark all the parts of the buffer matching the currently active region

\(fn)" t nil)

(autoload 'mc/mark-all-words-like-this "multiple-cursors/mc-mark-more" "\


\(fn)" t nil)

(autoload 'mc/mark-all-symbols-like-this "multiple-cursors/mc-mark-more" "\


\(fn)" t nil)

(autoload 'mc/mark-all-in-region "multiple-cursors/mc-mark-more" "\
Find and mark all the parts in the region matching the given search

\(fn BEG END)" t nil)

(autoload 'mc/mark-more-like-this-extended "multiple-cursors/mc-mark-more" "\
Like mark-more-like-this, but then lets you adjust with arrows key.
The actual adjustment made depends on the final component of the
key-binding used to invoke the command, with all modifiers removed:

   <up>    Mark previous like this
   <down>  Mark next like this
   <left>  If last was previous, skip it
           If last was next, remove it
   <right> If last was next, skip it
           If last was previous, remove it

Then, continue to read input events and further add or move marks
as long as the input event read (with all modifiers removed)
is one of the above.

\(fn)" t nil)

(autoload 'mc/mark-all-like-this-dwim "multiple-cursors/mc-mark-more" "\
Tries to guess what you want to mark all of.
Can be pressed multiple times to increase selection.

With prefix, it behaves the same as original `mc/mark-all-like-this'

\(fn ARG)" t nil)

(autoload 'mc/mark-all-like-this-in-defun "multiple-cursors/mc-mark-more" "\
Mark all like this in defun.

\(fn)" t nil)

(autoload 'mc/mark-all-words-like-this-in-defun "multiple-cursors/mc-mark-more" "\
Mark all words like this in defun.

\(fn)" t nil)

(autoload 'mc/mark-all-symbols-like-this-in-defun "multiple-cursors/mc-mark-more" "\
Mark all symbols like this in defun.

\(fn)" t nil)

(autoload 'mc/mark-sgml-tag-pair "multiple-cursors/mc-mark-more" "\
Mark the tag we're in and its pair for renaming.

\(fn)" t nil)

;;;***

;;;### (autoloads (set-rectangular-region-anchor) "multiple-cursors/rectangular-region-mode"
;;;;;;  "multiple-cursors/rectangular-region-mode.el" (20751 44397))
;;; Generated autoloads from multiple-cursors/rectangular-region-mode.el

(autoload 'set-rectangular-region-anchor "multiple-cursors/rectangular-region-mode" "\
Anchors the rectangular region at point.

Think of this one as `set-mark' except you're marking a rectangular region. It is
an exceedingly quick way of adding multiple cursors to multiple lines.

\(fn)" t nil)

;;;***

;;;### (autoloads (nxhtml-byte-recompile-file nxhtml-byte-compile-file
;;;;;;  nxhtml-get-missing-files nxhtml-update-existing-files nxhtml-setup-download-all
;;;;;;  nxhtml-setup-auto-download nxhtml-setup-install) "nxhtml/nxhtml-web-vcs"
;;;;;;  "nxhtml/nxhtml-web-vcs.el" (20751 47915))
;;; Generated autoloads from nxhtml/nxhtml-web-vcs.el

(autoload 'nxhtml-setup-install "nxhtml/nxhtml-web-vcs" "\
Setup and start nXhtml installation.

This is for installation and updating directly from the nXhtml
development sources.

There are two different ways to install:

  (1) Download all at once: `nxhtml-setup-download-all'
  (2) Automatically download part by part: `nxhtml-setup-auto-download'

You can convert between those ways by calling this function again.
You can also do this by setting the option `nxhtml-autoload-web' yourself.

When you have nXhtml installed you can update it:

  (3) Update new files in nXhtml: `nxhtml-update-existing-files'

To learn more about nXhtml visit its home page at URL
`http://www.emacswiki.com/NxhtmlMode/'.

If you want to test auto download (but not use it further) there
is a special function for that, you answer T here:

   (T) Test automatic download part by part: `nxhtml-setup-test-auto-download'

======
*Note*
If you want to download a zip file with latest released version instead then
please see URL `http://ourcomments.org/Emacs/nXhtml/doc/nxhtml.html'.

\(fn WAY)" t nil)

(autoload 'nxhtml-setup-auto-download "nxhtml/nxhtml-web-vcs" "\
Set up to autoload nXhtml files from the web.

This function will download some initial files and then setup to
download the rest when you need them.

Files will be downloaded under the directory root you specify in
DL-DIR.

Note that files will not be upgraded automatically.  The auto
downloading is just for files you are missing. (This may change a
bit in the future.) If you want to upgrade those files that you
have downloaded you can just call `nxhtml-update-existing-files'.

You can easily switch between this mode of downloading or
downloading the whole of nXhtml by once.  To switch just call the
command `nxhtml-setup-install'.

See also the command `nxhtml-setup-download-all'.

Note: If your nXhtml is to old you can't use this function
      directly.  You have to upgrade first, se the function
      above. Version 2.07 or above is good for this.

\(fn DL-DIR)" t nil)

(autoload 'nxhtml-setup-download-all "nxhtml/nxhtml-web-vcs" "\
Download or update all of nXhtml.

You can download all if nXhtml with this command.

To update existing files use `nxhtml-update-existing-files'.

If you want to download only those files you are actually using
then call `nxhtml-setup-auto-download' instead.

See the command `nxhtml-setup-install' for a convenient way to
call these commands.

For more information about auto download of nXhtml files see
`nxhtml-setup-auto-download'.

\(fn DL-DIR)" t nil)

(autoload 'nxhtml-update-existing-files "nxhtml/nxhtml-web-vcs" "\
Update existing nXhtml files from the development sources.
Only files you already have will be updated.

Note that this works both if you have setup nXhtml to auto
download files as you need them or if you have downloaded all of
nXhtml at once.

For more information about installing and updating nXhtml see the
command `nxhtml-setup-install'.

\(fn)" t nil)

(autoload 'nxhtml-get-missing-files "nxhtml/nxhtml-web-vcs" "\
Download to SUB-DIR missing files matching FILE-NAME-LIST.
If FILE-NAME-LIST is nil download all missing files.
If it is a list download all missing files in the list.
If it is a regexp download all missing matching files.

\(fn SUB-DIR FILE-NAME-LIST)" nil nil)

(autoload 'nxhtml-byte-compile-file "nxhtml/nxhtml-web-vcs" "\


\(fn FILE &optional LOAD)" nil nil)

(autoload 'nxhtml-byte-recompile-file "nxhtml/nxhtml-web-vcs" "\
Byte recompile FILE file if necessary.
For more information see `nxhtml-byte-compile-file'.
Loading is done if recompiled and LOAD is t.

\(fn FILE &optional LOAD)" t nil)

;;;***

;;;### (autoloads (nxhtmlmaint-byte-uncompile-all nxhtmlmaint-byte-recompile
;;;;;;  nxhtmlmaint-start-byte-compilation) "nxhtml/nxhtmlmaint"
;;;;;;  "nxhtml/nxhtmlmaint.el" (20751 47915))
;;; Generated autoloads from nxhtml/nxhtmlmaint.el

(autoload 'nxhtmlmaint-start-byte-compilation "nxhtml/nxhtmlmaint" "\
Start byte compilation of nXhtml in new Emacs instance.
Byte compiling in general makes elisp code run 5-10 times faster
which is quite noticeable when you use nXhtml.

This will also update the file nxhtml-loaddefs.el.

You must restart Emacs to use the byte compiled files.

If for some reason the byte compiled files does not work you can
remove then with `nxhtmlmaint-byte-uncompile-all'.

See also `nxhtmlmaint-byte-recompile'

\(fn)" t nil)

(autoload 'nxhtmlmaint-byte-recompile "nxhtml/nxhtmlmaint" "\
Recompile or compile all nXhtml files in current Emacs.
Byte compile all elisp libraries whose .el files are newer their
.elc files.

\(fn)" t nil)

(autoload 'nxhtmlmaint-byte-uncompile-all "nxhtml/nxhtmlmaint" "\
Delete byte compiled files in nXhtml.
This will also update the file nxhtml-loaddefs.el.

See `nxhtmlmaint-start-byte-compilation' for byte compiling.

\(fn)" t nil)

;;;***

;;;### (autoloads (web-vcs-investigate-elisp-file web-vcs-url-copy-file
;;;;;;  web-vcs-url-retrieve-synch web-vcs-byte-compile-file web-vcs-message-with-face
;;;;;;  web-vcs-get-files-from-root web-vcs-log-edit web-vcs-default-download-directory)
;;;;;;  "nxhtml/web-vcs" "nxhtml/web-vcs.el" (20751 47915))
;;; Generated autoloads from nxhtml/web-vcs.el

(autoload 'web-vcs-default-download-directory "nxhtml/web-vcs" "\
Try to find a suitable place.
Use the choice in `web-vcs-default-download-directory'.
If this does not fit fall back to \"~/.emacs.d/\".

\(fn)" nil nil)

(autoload 'web-vcs-log-edit "nxhtml/web-vcs" "\
Open log file.

\(fn)" t nil)

(autoload 'web-vcs-get-files-from-root "nxhtml/web-vcs" "\
Download a file tree from VCS system using the web interface.
Use WEB-VCS entry in variable `web-vcs-links-regexp' to download
files via http from FULL-URL to directory DL-DIR.

Show FULL-URL first and offer to visit the page.  That page will
give you information about version control system (VCS) system
used etc.

\(fn WEB-VCS FULL-URL DL-DIR)" nil nil)

(autoload 'web-vcs-message-with-face "nxhtml/web-vcs" "\
Display a colored message at the bottom of the string.
FACE is the face to use for the message.
FORMAT-STRING and ARGS are the same as for `message'.

Also put FACE on the message in *Messages* buffer.

\(fn FACE FORMAT-STRING &rest ARGS)" nil nil)

(autoload 'web-vcs-byte-compile-file "nxhtml/web-vcs" "\
Byte compile FILE in a new Emacs sub process.
EXTRA-LOAD-PATH is added to the front of `load-path' during
compilation.

FILE is set to `buffer-file-name' when called interactively.
If LOAD

\(fn FILE &optional LOAD EXTRA-LOAD-PATH COMP-DIR)" t nil)

(autoload 'web-vcs-url-retrieve-synch "nxhtml/web-vcs" "\
Retrieve URL, return cons with buffer and http status.

\(fn URL)" nil nil)

(autoload 'web-vcs-url-copy-file "nxhtml/web-vcs" "\
Copy URL to NEWNAME.  Both args must be strings.
Signals a `file-already-exists' error if file NEWNAME already exists,
unless a third argument OK-IF-ALREADY-EXISTS is supplied and non-nil.
A number as third arg means request confirmation if NEWNAME already exists.
This is what happens in interactive use with M-x.
Fourth arg KEEP-TIME non-nil means give the new file the same
last-modified time as the old one.  (This works on only some systems.)
Fifth arg PRESERVE-UID-GID is ignored.
A prefix arg makes KEEP-TIME non-nil.

\(fn URL NEWNAME &optional OK-IF-ALREADY-EXISTS KEEP-TIME PRESERVE-UID-GID)" nil nil)

(autoload 'web-vcs-investigate-elisp-file "nxhtml/web-vcs" "\


\(fn FILE-OR-BUFFER)" t nil)

;;;***

;;;### (autoloads (smart-tab-mode smart-tab-mode-on smart-tab) "smart-tab/smart-tab"
;;;;;;  "smart-tab/smart-tab.el" (20751 36341))
;;; Generated autoloads from smart-tab/smart-tab.el

(autoload 'smart-tab "smart-tab/smart-tab" "\
Try to 'do the smart thing' when tab is pressed.
`smart-tab' attempts to expand the text before the point or
indent the current line or selection.

In a regular buffer, `smart-tab' will attempt to expand with
either `hippie-expand' or `dabbrev-expand', depending on the
value of `smart-tab-using-hippie-expand'. Alternatively, if
`auto-complete-mode' is enabled in the current buffer,
`auto-complete' will be used to attempt expansion. If the mark is
active, or PREFIX is \\[universal-argument], then `smart-tab'
will indent the region or the current line (if the mark is not
active).

\(fn &optional PREFIX)" t nil)

(autoload 'smart-tab-mode-on "smart-tab/smart-tab" "\
Turn on `smart-tab-mode'.

\(fn)" nil nil)

(autoload 'smart-tab-mode "smart-tab/smart-tab" "\
Enable `smart-tab' to be used in place of tab.

With no argument, this command toggles the mode.
Non-null prefix argument turns on the mode.
Null prefix argument turns off the mode.

\(fn &optional ARG)" t nil)

(autoload 'global-smart-tab-mode-enable-in-buffers "smart-tab")

;;;***

;;;### (autoloads (smex-initialize smex) "smex/smex" "smex/smex.el"
;;;;;;  (20751 36377))
;;; Generated autoloads from smex/smex.el

(autoload 'smex "smex/smex" "\


\(fn)" t nil)

(autoload 'smex-initialize "smex/smex" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (tabulated-list-mode) "tabulated-list/tabulated-list"
;;;;;;  "tabulated-list/tabulated-list.el" (20751 42388))
;;; Generated autoloads from tabulated-list/tabulated-list.el

(autoload 'tabulated-list-mode "tabulated-list/tabulated-list" "\
Generic major mode for browsing a list of items.
This mode is usually not used directly; instead, other major
modes are derived from it, using `define-derived-mode'.

In this major mode, the buffer is divided into multiple columns,
which are labelled using the header line.  Each non-empty line
belongs to one \"entry\", and the entries can be sorted according
to their column values.

An inheriting mode should usually do the following in their body:

 - Set `tabulated-list-format', specifying the column format.
 - Set `tabulated-list-revert-hook', if the buffer contents need
   to be specially recomputed prior to `revert-buffer'.
 - Maybe set a `tabulated-list-entries' function (see below).
 - Maybe set `tabulated-list-printer' (see below).
 - Maybe set `tabulated-list-padding'.
 - Call `tabulated-list-init-header' to initialize `header-line-format'
   according to `tabulated-list-format'.

An inheriting mode is usually accompanied by a \"list-FOO\"
command (e.g. `list-packages', `list-processes').  This command
creates or switches to a buffer and enables the major mode in
that buffer.  If `tabulated-list-entries' is not a function, the
command should initialize it to a list of entries for displaying.
Finally, it should call `tabulated-list-print'.

`tabulated-list-print' calls the printer function specified by
`tabulated-list-printer', once for each entry.  The default
printer is `tabulated-list-print-entry', but a mode that keeps
data in an ewoc may instead specify a printer function (e.g., one
that calls `ewoc-enter-last'), with `tabulated-list-print-entry'
as the ewoc pretty-printer.

\(fn)" t nil)

;;;***

;;;### (autoloads (twit) "twittering-mode/twittering-mode" "twittering-mode/twittering-mode.el"
;;;;;;  (20751 41581))
;;; Generated autoloads from twittering-mode/twittering-mode.el

(autoload 'twit "twittering-mode/twittering-mode" "\
Start twittering-mode.

\(fn)" t nil)

;;;***

;;;### (autoloads (global-undo-tree-mode undo-tree-mode) "undo-tree/undo-tree"
;;;;;;  "undo-tree/undo-tree.el" (20751 35678))
;;; Generated autoloads from undo-tree/undo-tree.el

(autoload 'undo-tree-mode "undo-tree/undo-tree" "\
Toggle undo-tree mode.
With no argument, this command toggles the mode.
A positive prefix argument turns the mode on.
A negative prefix argument turns it off.

Undo-tree-mode replaces Emacs' standard undo feature with a more
powerful yet easier to use version, that treats the undo history
as what it is: a tree.

The following keys are available in `undo-tree-mode':

  \\{undo-tree-map}

Within the undo-tree visualizer, the following keys are available:

  \\{undo-tree-visualizer-map}

\(fn &optional ARG)" t nil)

(defvar global-undo-tree-mode nil "\
Non-nil if Global-Undo-Tree mode is enabled.
See the command `global-undo-tree-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-undo-tree-mode'.")

(custom-autoload 'global-undo-tree-mode "undo-tree/undo-tree" nil)

(autoload 'global-undo-tree-mode "undo-tree/undo-tree" "\
Toggle Undo-Tree mode in all buffers.
With prefix ARG, enable Global-Undo-Tree mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Undo-Tree mode is enabled in all buffers where
`turn-on-undo-tree-mode' would do it.
See `undo-tree-mode' for more information on Undo-Tree mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (yas-global-mode yas-minor-mode) "yasnippet/yasnippet"
;;;;;;  "yasnippet/yasnippet.el" (20751 36074))
;;; Generated autoloads from yasnippet/yasnippet.el

(autoload 'yas-minor-mode "yasnippet/yasnippet" "\
Toggle YASnippet mode.

When YASnippet mode is enabled, `yas-expand', normally bound to
the TAB key, expands snippets of code depending on the major
mode.

With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

Key bindings:
\\{yas-minor-mode-map}

\(fn &optional ARG)" t nil)

(defvar yas-global-mode nil "\
Non-nil if Yas-Global mode is enabled.
See the command `yas-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `yas-global-mode'.")

(custom-autoload 'yas-global-mode "yasnippet/yasnippet" nil)

(autoload 'yas-global-mode "yasnippet/yasnippet" "\
Toggle Yas minor mode in all buffers.
With prefix ARG, enable Yas-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Yas minor mode is enabled in all buffers where
`yas-minor-mode-on' would do it.
See `yas-minor-mode' for more information on Yas minor mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("anything-find-project-resourses/anything-find-project-resources.el"
;;;;;;  "anything-project/anything-project.el" "anything/contrib/anything-grep.el"
;;;;;;  "anything/contrib/anything-ipa.el" "anything/contrib/anything-menu.el"
;;;;;;  "anything/contrib/anything-migemo.el" "anything/contrib/anything-multi-sources.el"
;;;;;;  "anything/contrib/anything-startup.el" "anything/extensions/anything-complete.el"
;;;;;;  "anything/extensions/anything-gtags.el" "anything/extensions/anything-obsolete.el"
;;;;;;  "anything/extensions/anything-show-completion.el" "auto-complete-css/auto-complete-css.el"
;;;;;;  "auto-complete-emacs-lisp/auto-complete-emacs-lisp.el" "auto-complete-latex/auto-complete-latex.el"
;;;;;;  "auto-complete-yasnippet/auto-complete-yasnippet.el" "auto-complete/auto-complete-config.el"
;;;;;;  "auto-complete/auto-complete-pkg.el" "breadcrumb/breadcrumb.el"
;;;;;;  "cedet/cedet-build.el" "cedet/cedet-devel-load.el" "cedet/cedet-ediff.el"
;;;;;;  "cedet/cedet-emacs-merge.el" "cedet/cedet-remove-builtin.el"
;;;;;;  "cedet/cedet-update-changelog.el" "cedet/cedet-update-version.el"
;;;;;;  "chumpy-windows/spaces.el" "chumpy-windows/splitter.el" "chumpy-windows/window-jump.el"
;;;;;;  "ecb/ecb-advice-test.el" "ecb/ecb-analyse.el" "ecb/ecb-autogen.el"
;;;;;;  "ecb/ecb-buffertab.el" "ecb/ecb-cedet-wrapper.el" "ecb/ecb-common-browser.el"
;;;;;;  "ecb/ecb-compatibility.el" "ecb/ecb-compilation.el" "ecb/ecb-create-layout.el"
;;;;;;  "ecb/ecb-cycle.el" "ecb/ecb-eshell.el" "ecb/ecb-examples.el"
;;;;;;  "ecb/ecb-face.el" "ecb/ecb-file-browser.el" "ecb/ecb-jde.el"
;;;;;;  "ecb/ecb-layout-defs.el" "ecb/ecb-layout.el" "ecb/ecb-method-browser.el"
;;;;;;  "ecb/ecb-mode-line.el" "ecb/ecb-multiframe.el" "ecb/ecb-navigate.el"
;;;;;;  "ecb/ecb-semantic-wrapper.el" "ecb/ecb-semantic.el" "ecb/ecb-speedbar.el"
;;;;;;  "ecb/ecb-symboldef.el" "ecb/ecb-tod.el" "ecb/ecb-upgrade.el"
;;;;;;  "ecb/ecb-winman-support.el" "ecb/silentcomp.el" "ecb/tree-buffer.el"
;;;;;;  "fuzzy/fuzzy.el" "iedit/iedit-lib.el" "iedit/iedit-tests.el"
;;;;;;  "javadoc-help/javadoc-help.el" "jdee/lisp/efc.el" "jdee/lisp/jcomplete.el"
;;;;;;  "jdee/lisp/jde-annotations.el" "jdee/lisp/jde-class.el" "jdee/lisp/jde-complete.el"
;;;;;;  "jdee/lisp/jde-dbo.el" "jdee/lisp/jde-dbs.el" "jdee/lisp/jde-ecj-flymake.el"
;;;;;;  "jdee/lisp/jde-imenu.el" "jdee/lisp/jde-java-grammar.el"
;;;;;;  "jdee/lisp/jde-jdb.el" "jdee/lisp/jde-juci.el" "jdee/lisp/jde-parse-class.el"
;;;;;;  "jdee/lisp/jde-plugins.el" "jdee/lisp/jde-sregex.el" "jdee/lisp/jde-tree-widget.el"
;;;;;;  "jdee/lisp/jde-widgets.el" "jdee/lisp/jde-wiz.el" "jdee/lisp/regress.el"
;;;;;;  "jdee/lisp/which.el" "logito/logito.el" "mag-menu/mag-menu.el"
;;;;;;  "multi-web-mode/mweb-example-config.el" "multiple-cursors/mc-cycle-cursors.el"
;;;;;;  "multiple-cursors/multiple-cursors-core.el" "multiple-cursors/multiple-cursors-pkg.el"
;;;;;;  "multiple-cursors/multiple-cursors.el" "nxhtml/autostart.el"
;;;;;;  "nxhtml/autostart22.el" "nxhtml/nxhtml-base.el" "nxhtml/nxhtml-loaddefs.el"
;;;;;;  "nxhtml/web-autoload.el" "pcache/pcache-tests.el" "pcache/pcache.el"
;;;;;;  "popup/popup.el" "twittering-mode/test.el" "workgroups/workgroups.el"
;;;;;;  "yasnippet/dropdown-list.el" "yasnippet/yasnippet-debug.el"
;;;;;;  "yasnippet/yasnippet-tests.el") (20751 49364 879124))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
