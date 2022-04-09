
## Stage on default CSS v3 image
FROM solidproject/community-server:3

## Refer to GitHub repository
LABEL org.opencontainers.image.source https://github.com/digita-ai/useid

## Set current directory
WORKDIR /community-server

## Override default configuration
COPY ./config/default.json ./config/default.json

## Inform Docker that the container listens on the specified network port at runtime
EXPOSE 80

## Let container run server with new default configuration
ENTRYPOINT [ "node", "bin/server.js", "-c", "config/default.json", "-p", "80" ]

## Set default arguments
CMD [ "-f", "/data", "-b", "http://localhost:80/" ]