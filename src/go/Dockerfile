FROM docker.io/ypcs/debian:trixie

ARG APT_PROXY

RUN apt-setup && \
    apt-get --assume-yes install \
      ca-certificates \
      golang \
      sccache && \
    apt-cleanup

RUN useradd --create-home user
USER user
ENV GOPATH=/cache/go
ENTRYPOINT ["/usr/bin/go"]
CMD ["--help"]
