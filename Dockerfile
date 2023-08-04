FROM golang:1.11.1 AS builder1

RUN mkdir /app

ADD . /app

WORKDIR /app

RUN go build -o /app/main .

FROM scratch AS builder2

WORKDIR /app

COPY --from=builder1 /app/main ./main

CMD ["./main"]
