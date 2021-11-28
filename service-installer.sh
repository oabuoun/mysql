#!/usr/bin/env bash

BASEDIR=$(dirname $0)

echo "=== `date` : Create .config/systemd/user ==="
mkdir -p $HOME/.config/systemd/user

echo "=== `date` : Copy phpMyAdmin service file to .config/systemd/user ==="
cp -p phpmyadmin_mysql.service $HOME/.config/systemd/user/

echo "=== `date` : Enable the Services ==="
systemctl --user daemon-reload
systemctl --user enable phpmyadmin_mysql
systemctl --user restart phpmyadmin_mysql
sudo loginctl enable-linger $USER
