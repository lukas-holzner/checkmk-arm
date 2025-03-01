#!/bin/bash
curl -LO $(curl -s https://api.github.com/repos/chrisss404/check-mk-arm/releases/latest | grep browser_download_url | cut -d '"' -f 4 | grep bullseye_$(dpkg --print-architecture).deb)
dpkg -i check-mk-raw-*.bullseye_$(dpkg --print-architecture).deb
rm check-mk-raw-*.bullseye_$(dpkg --print-architecture).deb
/usr/bin/omd stop
/usr/bin/omd update mon
/usr/bin/omd start
/usr/bin/omd cleanup