FROM alpine

RUN apk update && apk add shadowsocks-libev curl

CMD ss-server \
    -s 0.0.0.0 \
    -p 443 \
    -k mypassword123 \
    -m aes-256-gcm \
    --fast-open
