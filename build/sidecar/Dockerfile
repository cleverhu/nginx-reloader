FROM --platform=linux/amd64 docker.m.daocloud.io/library/golang:1.19.2 as build
WORKDIR /app

ENV GO111MODULE=on \
    GOPROXY=https://goproxy.cn,direct

ADD . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -o nginx-reloader ./cmd/sidecar/main.go

# main image
FROM --platform=linux/amd64 nginx:1.23.3-alpine
COPY --from=build /app/nginx-reloader /bin
CMD ["/bin/nginx-reloader"]
