#!/bin/bash


# Update repo's!
echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" > /etc/apk/repositories
echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories

# Update APK
apk update

# Install git
apk add git

# Install Chromium + Webdriver
apk add chromium
apk add chromium-chromedriver

# Install Python and selenium
apk add python3
pip3 install -U selenium
pip3 install -U python-pushover

# Download MarktplaatsScraper
git clone https://github.com/jaspercardol/MarktplaatsScraper.git
cp MarktplaatsScraper /MarktplaatsScraper


# Execute it.
exec /init
