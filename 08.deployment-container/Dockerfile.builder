FROM docker:dind

RUN mkdir -p /app
WORKDIR /app
ADD . .
