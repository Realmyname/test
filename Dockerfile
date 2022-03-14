FROM alpine:3.15
RUN apk add --no-cache wget
RUN apk add --no-cache htop

RUN wget --no-check-certificate https://github.com/tsl0922/ttyd/releases/download/1.6.3/ttyd.x86_64 \
    && chmod +x ttyd.x86_64 && mv ttyd.x86_64 /usr/bin/ttyd
#EXPOSE ${TLS_PORT} $PORT

CMD /usr/bin/ttyd -p $PORT -c admin:admin1234 bash
