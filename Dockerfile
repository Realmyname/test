FROM archlinux:latest

#ENV TLS_PORT=4433 PORT=8080

RUN pacman -S --noconfirm wget

RUN wget --no-check-certificate https://github.com/tsl0922/ttyd/releases/download/1.6.3/ttyd.x86_64 \
    && chmod +x ttyd.x86_64 && mv ttyd.x86_64 /usr/bin/ttyd
#EXPOSE ${TLS_PORT} $PORT

CMD /usr/bin/ttyd -p $PORT -c admin:admin1234 bash
