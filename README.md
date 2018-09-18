Docker container for Automatic YouTube Downloader (https://github.com/Dannyman3819/Automatic-Youtube-Downloader)

Usage
docker create \
--name=automatic-youtube-downloader \
-v <path to data>:/config \
-v <path to downloads>:/downloads \
mtehonica/docker-automatic-youtube-downloader

Parameters

-v /config - config files for Automatic YouTube Downloader (this is the 'data' folder when not running in a container)
-v /downloads - where you want to store the downloaded videos (If using with Plex, this would be your library directory)

Base image is python:3.5, for shell access while the container is running do docker exec -it docker-automatic-youtube-downloader /bin/bash