#!/bin/bash

mkdir /usr/src/qmi_connect

echo -n "Please enter the name of SIM card's APN (ex: free, orange, ...): "
read apn
echo apn=$apn
sed "s/\\\${apn.value}/$apn/" qmi_connect.sh > /usr/src/qmi_connect/qmi_connect.sh
cp qmi_reconnect.sh /usr/src/qmi_connect
cp qmi_reconnect.service /etc/systemd/system/

systemctl daemon-reload
systemctl start qmi_reconnect.service
systemctl enable qmi_reconnect.service

echo "DONE"
