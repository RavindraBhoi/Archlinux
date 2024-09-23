#!/usr/bin/env bash

echo "Enter your network name(SSID):"
read SSID

echo "Enter your network password:"
read PASS

iwctl station wlan0 connect "$(SSID)"
"(PASS)"

