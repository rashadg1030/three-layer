FROM ubuntu:16.04
RUN apt-get update && apt-get install libpq-dev wget unzip sudo -y
RUN wget -qO- https://get.haskellstack.org/ | sh
RUN stack install hlint --resolver=lts-11.8
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
RUN wget https://github.com/google/protobuf/releases/download/v3.5.1/protoc-3.5.1-linux-x86_64.zip && unzip protoc-3.5.1-linux-x86_64.zip && sudo mv ./bin/protoc /usr/local/bin
