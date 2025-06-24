FROM docker.io/ypcs/debian:trixie

ARG APT_PROXY

RUN apt-setup && \
    apt-get --assume-yes install \
      cargo \
      sccache && \
    apt-cleanup

RUN useradd --create-home user
USER user

ENV CARGO_HOME=/home/user/.cache/cargo
ENV RUSTC_WRAPPER=sccache
ENTRYPOINT ["/usr/bin/cargo"]
CMD ["--help"]
