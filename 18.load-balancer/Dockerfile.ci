FROM debian:9

RUN apt-get update && apt-get install -y apache2-utils curl

ADD ./ab-with-backoff.sh ./ab-with-backoff.sh
