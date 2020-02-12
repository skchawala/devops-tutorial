# use a node base image
FROM node:7-onbuild

# set maintiner
LABEL maintainer "satishkchawala@gmail.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f https://127.0.0.1:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000            