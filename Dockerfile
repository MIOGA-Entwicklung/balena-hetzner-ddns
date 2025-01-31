FROM golang:1.17-alpine3.14

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY main.go ./

RUN go build -o /hetzner-ddns

ENTRYPOINT ["/hetzner-ddns"]