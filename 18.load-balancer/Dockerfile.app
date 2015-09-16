FROM golang:1.5.1

WORKDIR /app
ADD . ./
RUN go build -o app .
