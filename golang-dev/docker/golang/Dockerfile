FROM golang:latest

ARG CONTAINER_USER=user
ARG CONTAINER_GROUP=user
ARG HOST_UID=1000
ARG HOST_GID=1000

RUN groupadd -g $HOST_GID $CONTAINER_GROUP && \
    useradd -m -s /bin/bash -u $HOST_UID -g $HOST_GID $CONTAINER_USER
RUN apt-get install git

RUN apt-get update \
    && go install golang.org/x/tools/cmd/...@latest \
    && go install golang.org/x/tools/gopls@latest \
    && go install github.com/go-delve/delve/cmd/dlv@latest \
    && apt-get -y install default-jre \
    && apt-get -y install graphviz 

USER $CONTAINER_USER
RUN echo "alias ll='ls -alF'" >> ~/.bashrc
RUN echo "alias ls='ls --color=auto'" >> ~/.bashrc