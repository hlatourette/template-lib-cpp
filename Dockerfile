FROM gcc:12.3 AS build
RUN apt-get update && apt-get install -y \
    catch2 \
    cmake && \
    apt-get autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/*
COPY . /usr/local/src/templatelib
WORKDIR /usr/local/src/templatelib
RUN make build && \
    make test && \
    make package

FROM scratch AS build-export
COPY --from=build /usr/local/src/templatelib/build/templatelib-Linux.deb /
WORKDIR /

FROM ubuntu:latest AS test
COPY --from=build /usr/local/src/templatelib/build/tests/integration/templatelib.i.t /usr/local/bin
WORKDIR /usr/local/bin
ENTRYPOINT [ "/usr/local/bin/templatelib.i.t" ]

# to remove ? (keep for testing install)
FROM ubuntu:latest AS run
COPY --from=build /usr/local/src/templatelib/build/templatelib-Linux.deb /usr/local/bin
WORKDIR /usr/local/bin
RUN dpkg -i templatelib-Linux.deb
