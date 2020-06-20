FROM ubuntu:18.04

ARG src_path=/src

RUN apt-get update                          && \
    apt-get install -y                         \
    g++ build-essential

# data and conf should be replaced by volumes
RUN mkdir -p $src_path

WORKDIR $src_path
CMD     make

