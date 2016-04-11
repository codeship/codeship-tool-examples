FROM docker:1.9-dind

RUN mkdir -p /app
WORKDIR /app
ADD . .
