FROM golang:1.11.1 AS builder1

RUN mkdir /app

ADD . /app

WORKDIR /app

RUN CGO_ENABLED=0 GOOS=linux go build -o main ./...

FROM alpine:latest AS builder2

COPY --from=builder1 /app .

CMD ["./main"]
