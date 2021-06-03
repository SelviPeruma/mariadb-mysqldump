FROM mariadb
RUN apt-get update && apt-get install -y \
  lz4 \
  zstd \
  ssh \
  && rm -rf /var/lib/apt/lists/*
COPY run.sh /
CMD "/usr/bin/env bash /run.sh"
