# Docker Youtube-DL

This image is based on python:3.8-alpine and uses https://github.com/ytdl-org/youtube-dl library

# How to use

```bash
docker run -v $(pwd):/downloads --rm ajite/youtube-dl [COMMAND]
```

To check the help:

```bash
docker run --rm ajite/youtube-dl --help
```

# Warning

If you don't set the -v argument the video will be downloaded inside the docker container. Videos are downloaded in the container /downloads repository.

# Tips

You can avoid typing docker command by creating a youtube-dl bash file in /usr/local/bin/

```bash
#!/bin/bash
docker run --rm -v ~/Downloads:/downloads ajite/youtube-dl $@
```                                                                    
