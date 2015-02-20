;; prodigy is a cool way to start external services from Emacs

;; definition of the services follow:
(require 'prodigy)

(prodigy-define-service
  :name "Python app"
  :command "python"
  :args '("-m" "SimpleHTTPServer" "6001")
  :cwd "/home/luke"
  :tags '(work)
  :kill-signal 'sigkill
  :kill-process-buffer-on-stop t)

(prodigy-define-service
  :name "MQTT notifications to DBus from NAGIOS on CDTE"
  :command "python"
  :args '("mdn.py" "-B" "nunc3sv9161.nu.nc3a" "-P" "1883" "-t" "$CDTE/nagios/#")
  :cwd "~/work/projects/mqtt/mdn"
  :tags '(work nagios mqtt)
  :kill-signal 'sigkill
  :kill-process-buffer-on-stop t)

;; (prodigy-define-service
;;   :name "RDP to CDTE"
;;   :command "~/bin/cdte_rdp"
;;   :args '("192.168.113.78")
;;   :cwd "~"
;;   :tags '(work cdte rdp)
;;   :kill-signal 'sigkill
;;   :kill-process-buffer-on-stop t)
