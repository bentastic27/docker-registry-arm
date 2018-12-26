FROM golang:1.11
WORKDIR /go/src/app
RUN go get -v github.com/docker/distribution/cmd/registry
RUN mkdir -p /etc/docker
COPY config.yml /etc/docker/config.yml
CMD [ "/go/bin/registry", "serve", "/etc/docker/config.yml" ]