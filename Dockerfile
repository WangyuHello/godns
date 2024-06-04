FROM golang:1.16

WORKDIR /app

COPY . .

RUN go build -o godns .

EXPOSE 53

CMD ["./godns -c /godns.conf"]