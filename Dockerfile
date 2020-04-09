FROM python:3.8-alpine
RUN pip install youtube-dl
RUN mkdir /downloads
WORKDIR /downloads
VOLUME ["/downloads"]
ENTRYPOINT [ "youtube-dl" ]
