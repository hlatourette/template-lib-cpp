FROM gcc:9.3 AS builder
RUN apt-get update && apt-get install -y \
    catch \
    cmake && \
    apt-get autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/*
COPY . /usr/local/src/templatelib
WORKDIR /usr/local/src/templatelib
RUN make build && \
    make test && \
    make package

FROM ubuntu:latest AS tester
COPY --from=builder /usr/local/src/templatelib/build/ /usr/local/src/templatelib/build/
WORKDIR /usr/local/src/templatelib/build
RUN dpkg -i templatelib-Linux.deb

# TODO 'AS publisher'
# COPY --from=tester /usr/local/src/templatelib/build/...deb ....
# RUN test the install ... dpkg -i .deb
# RUN dpkg-upload...