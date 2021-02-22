FROM node:14-alpine3.12 as build
LABEL org.opencontainers.image.source https://github.com/Stuff-Dockerfiles/node

RUN apk update \
 && apk add -u --no-cache \
            bash \
            curl \
            git \
            jq \
            less \
            openssh-client \
            vim

FROM build as test

RUN set -ex
RUN id -u node
RUN node --version
RUN git --version
RUN jq --version
