FROM alpine:3.14
WORKDIR /app

RUN apk update
RUN apk add --no-cache cmake build-base git && \
    git clone https://github.com/10h30/lookbusy.git && \
    cd lookbusy && chmod +x ./configure && ./configure && make && \
    apk del build-base git cmake

CMD ["sh", "/app/start.sh"]
