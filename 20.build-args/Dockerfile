FROM ubuntu:latest

ARG FOO=default
ARG USER
ARG SECRET

ENV FOO=$FOO
ENV USER=$USER
ENV SECRET=$SECRET

RUN printenv

RUN mkdir /app
COPY . /app

