#!/bin/bash

[ -e /etc/shadowsocks.json ] && rm /etc/shadowsocks.json

config=$(</etc/shadowsocks.tmpl);
config="${config//\{PASSWORD\}/$PASSWORD}";
printf '%s\n' "$config" >/etc/shadowsocks.json

echo "Configured, starting"

exec "$@"
