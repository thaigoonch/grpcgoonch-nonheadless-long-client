FROM golang:1.17
WORKDIR /app
COPY . /app

ENV GOOS=linux

RUN chmod +x ./generate.sh && \
    ./generate.sh && \
    go install ./...
CMD ["/go/bin/grpcgoonchnonheadlesslongclient"]