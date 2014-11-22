#!/bin/bash

script="$(basename "$0")"
script_name="${script/.sh/}"

echo "Running ${script}" >"/var/log/wicd/${script_name}.log"
exec 2>>"/var/log/wicd/${script_name}.log"
exec 1>&2

connection_type="$1"
echo "Connection type: ${connection_type}"

if [ "${connection_type}" == "wired" ]; then
profile="$3"
echo "Profile: ${profile}"
elif [ "${connection_type}" == "wireless" ]; then
rm /etc/ESSID
rm /etc/BSSID
else
echo "Unknown connection type: ${connection_type}" >&2
exit
fi


