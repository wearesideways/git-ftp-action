FROM debian:buster

COPY README.md /

RUN apt-get update \
  && apt-get install -y git-ftp \
  && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
