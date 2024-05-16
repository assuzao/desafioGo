FROM golang:1.22 as builder

WORKDIR /usr/src/app

COPY . .

RUN go build -o desafioGo .

FROM scratch

COPY --from=builder /usr/src/app/desafioGo ./desafioGo

CMD ["./desafioGo"]