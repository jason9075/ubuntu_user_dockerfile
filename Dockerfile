From ubuntu:latest

ENV USER_NAME=user
ENV USER_PASSWD=passwd

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    curl \
    git \
    ca-certificates \
    ssh \
    sudo \
    vim

# Add user
RUN useradd -ms /bin/bash -g root -G sudo -u 1001 -p "$(openssl passwd -1 ${USER_PASSWD})" ${USER_NAME}

USER ${USER_NAME}
WORKDIR /home/${USER_NAME}

