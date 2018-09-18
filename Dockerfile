FROM python:3.5
LABEL maintainer="matt.tehonica@gmail.com"

# Basic packages
RUN apt update && \
    apt install -y git wget ffmpeg && \
    # Install python packages
    pip install beautifulsoup4 listparser youtube-dl && \
    # Pull Automatic Youtube Downloader from Github
    git clone https://github.com/Dannyman3819/Automatic-Youtube-Downloader.git /app && \
    ln -s /app/data /config

VOLUME ["/config", "/downloads"]
CMD /bin/sh -c "cd /app && python main.py"