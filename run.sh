chmod 744 ./node_exporter-1.1.1.linux-amd64/node_exporter
cp ./node_exporter.service /etc/systemd/system/
systemctl enable node_exporter.service
systemctl start node_exporter.service