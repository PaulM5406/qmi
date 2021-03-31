#!/bin/bash

systemctl stop qmi_reconnect.service
systemctl disable qmi_reconnect.service
rm /etc/systemd/system/qmi_reconnect.service
systemctl daemon-reload

rm -r /usr/src/qmi_connect

echo "DONE"
