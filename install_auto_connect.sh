#!/bin/sh

cp qmi_reconnect.sh /usr/src/
cp qmi_connect.sh /usr/src/
cp qmi_reconnect.service /etc/systemd/system/

systemctl daemon-reload
systemctl start qmi_reconnect.service
systemctl enable qmi_reconnect.service

echo "DONE"
