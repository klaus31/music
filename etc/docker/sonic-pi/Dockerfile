# http://www.sonic-pi.net
# https://launchpad.net/~sonic-pi/+archive/ubuntu/ppa
# http://widdersh.in/controlling-sonic-pi-from-vim-or-anywhere-else/
# docker build -t sonic-pi  .
# docker run -ti -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -p 4557:4557 -p 4558:4558 sonic-pi

# From which OS the application should run
FROM ubuntu:14.04

# Setup environment
ENV DEBIAN_FRONTEND noninteractive

COPY sonic-pi.list /etc/apt/sources.list.d/.

# Update sources
RUN apt-get update

RUN apt-get -y --force-yes install \
  nano \
  vim \
  curl \
  bash-completion \
  unzip \
  apt-transport-https \
  ca-certificates \
  less \
  sonic-pi

RUN gem install sonic-pi-cli

# Replace 1000 with your user / group id   ( To share the X11 sockets between GuestOS and HostOS, UID and GID should be same as HostOS user)
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer


# Which user the command shoud run
USER developer
ENV HOME /home/developer

EXPOSE 4557 4558

# What command docker should execute at the time of launching container
CMD sonic-pi
