#!/usr/bin/env bash

sudo tee /etc/systemd/system/allow_brightness.service <<EOF >/dev/null
[Unit]
Description=allow_brightness daemon

[Service]
Type=oneshot
ExecStart=bash -c 'sleep 5 ; chmod 666 /sys/class/backlight/acpi_video0/brightness'

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable allow_brightness.service

echo "enable allow_brightness.service"
