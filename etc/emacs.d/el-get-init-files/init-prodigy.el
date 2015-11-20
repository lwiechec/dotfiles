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

(prodigy-define-service
  :name "Start Jube"
  :command "sh"
  :args '("run.sh")
  :cwd "~/work/experimental/fabric8/v2/jube"
  :tags '(work)
  :kill-signal 'sigkill
  :kill-process-buffer-on-stop t)

(prodigy-define-service
  :name "Connect to CDTE via VPN"
  :command "sh"
  :args '("connect_cdte.sh")
  :cwd "~/work/etoken"
  :tags '(work cdte)
  :kill-signal 'sigkill
  :kill-process-buffer-on-stop t)

(prodigy-define-service
  :name "Local MongDB instance"
  :command "./bin/mongod"
  :args '("--dbpath" "data/db")
  :cwd "~/work/tools/mongodb/default"
  :tags '(work mongo)
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
