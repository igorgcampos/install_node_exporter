#! /bin/bash
cd /tmp
curl -LO https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz
tar -xvf node_exporter*.tar.gz
mv node_exporter-1.3.1.linux-amd64/node_exporter /usr/local/bin/
useradd -rs /bin/false node_exporter
cd /home/telespazio
cp node_exporter.service /etc/systemd/system
systemctl daemon-reload
systemctl start node_exporter
systemctl enable node_exporter
