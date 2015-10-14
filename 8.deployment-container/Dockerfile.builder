FROM jpetazzo/dind

RUN mkdir -p /app
WORKDIR /app
ADD . .
