FROM ubuntu:latest
RUN apt-get update \
  && apt-get install -y git make \
  && git clone https://github.com/tfutils/tfenv.git ~/.tfenv \
  && ln -s ~/.tfenv/bin/* /usr/local/bin \
  && rm -rf /var/lib/apt/lists/*
