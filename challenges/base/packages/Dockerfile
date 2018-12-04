FROM ubuntu

# Install packages in Docker and clean the container
# from https://hub.docker.com/r/guilhem/apt-get-install/
RUN apt-get update && \
    apt-get install -y nano vim openssh-server less sudo man && \
    apt-get autoremove && \
    apt-get clean

#
# Create the system wide initialization file /etc/bash.bashrc
#
COPY bash.bashrc /etc/profile

