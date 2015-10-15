FROM alpine:3.2

RUN apk add --update make curl tar bash && rm -rf /var/cache/apk/*

RUN curl -SLo "jet-0.11.0.tar.gz" "https://s3.amazonaws.com/codeship-jet-releases/0.11.0/jet-linux_amd64_0.11.0.tar.gz"
RUN tar -xaC /usr/local/bin -f jet-0.11.0.tar.gz
RUN chmod +x /usr/local/bin/jet

WORKDIR /app

COPY . ./
