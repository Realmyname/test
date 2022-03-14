FROM alpine:3.15

RUN apk add -U wireguard-tools

RUN apk add --no-cache curl 

