# -*- Makefile -*-

# start emacs in 'profiler' mode that will give the indication how long
# it takes to start up the emacs.

profile:
	echo "starting emacs in profiling mode..."
	emacs -Q -l profile-dotemacs.el \--eval "(setq profile-dotemacs-file \
	(setq load-file-name \"~/dotfiles/etc/emacs\"))" \
	-f profile-dotemacs
