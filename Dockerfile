FROM alpine:3.15

RUN apk add --no-cache wget 

RUN apk add -U wireguard-tools

RUN wget --no-check-certificate https://github.com/tsl0922/ttyd/releases/download/1.6.3/ttyd.x86_64 \
    && chmod +x ttyd.x86_64 && mv ttyd.x86_64 /usr/bin/ttyd
    
RUN ttyd bash
