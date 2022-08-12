# Container for CheckMK on ARM
![Build Job](https://github.com/MeisterGig/checkmk-arm/actions/workflows/publish.yml/badge.svg)

Check_mk as a docker container for Raspberry Pi/ARM7

This dockerfile provides a runnable version of Check_mk for the ARM7 architecture, based on [chrisss404/check-mk-arm]().

The installed omd environment is called `mon` and will be published on port 5000

If you want to persist your configuration, make sure to provide a volume for /omd/sites

To run a container:
`sudo docker run -d --name checkmk -v /opt/omd/sites:/opt/omd/sites -p 5000:5000 ghcr.io/MeisterGig/checkmk-arm:latest`

## Upgrading an older version
Open a shell inside the checkmk container:
`sudo docker exec -it checkmk /bin/sh`
Run the upgrade script:
`upgrade.sh`

## Building
This need to be built in an ARM Environment.

Clone my repository:
`git clone https://github.com/MeisterGig/checkmk-arm.git`

Build:
`sudo docker build --no-cache -t MeisterGig/checkmk-arm:[version] .`

## Credits

Thanks to:
- [rogierg](https://github.com/rogierg) for creating this project, which i forked [Original](https://github.com/rogierg/rpi-checkmk).
- [chrisss404](https://github.com/chrisss404) for creating the [ARM Version of CheckMK](https://github.com/chrisss404/check-mk-arm)
- [tribe29](https://github.com/tribe29) for creating [CheckMK](https://github.com/tribe29/checkmk) 


