FROM debian:stretch-slim

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      git \
	  make \
	  apt-transport-https \
	  ca-certificates \
      curl \
      gnupg2 \
 && curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - \
 && echo "deb [arch=amd64] https://download.docker.com/linux/debian stretch stable" >> /etc/apt/sources.list.d/docker.list \
 && apt-get update \
 && apt-get install -y --no-install-recommends docker-ce \
 && rm -rf /var/lib/apt/lists/*
