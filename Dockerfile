FROM gcc:9.3 AS builder
RUN apt-get update && apt-get install -y \
    catch \
    cmake && \
    apt-get autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/*
COPY . /usr/src/templatelib
WORKDIR /usr/src/templatelib
RUN make build && \
    make install && \
    make test

# TODO
# FROM ubuntu:latest
# COPY --from=builder