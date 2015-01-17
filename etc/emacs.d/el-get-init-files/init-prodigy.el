;; prodigy is a cool way to start external services from Emacs

;; definition of the services follow:

(prodigy-define-service
  :name "Python app"
  :command "python"
  :args '("-m" "SimpleHTTPServer" "6001")
  :cwd "/home/luke"
  :tags '(work)
  :kill-signal 'sigkill
  :kill-process-buffer-on-stop t)
