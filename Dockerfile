FROM golang:1.13.5-alpine3.10 AS builder

WORKDIR /build

ENV GOPROXY https://goproxy.cn
COPY go.mod .
COPY go.sum .
RUN go mod download

COPY . .
RUN CGO_ENABLED=0 GOARCH=amd64 GOOS=linux go build -a -o service-a .

FROM alpine:3.10 AS final

WORKDIR /app
COPY --from=builder /build/service-a /app/
COPY --from=builder /build/config.yaml /app/config.yaml
COPY --from=builder /etc/passwd /etc/passwd
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/

EXPOSE 8888

ENTRYPOINT ["/app/service-a"]
