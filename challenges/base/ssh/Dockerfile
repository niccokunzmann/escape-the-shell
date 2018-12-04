#
# This image provides SSH access to the network.
# It originates from
# https://docs.docker.com/engine/examples/running_ssh_service/
# 
#
FROM escapetheshell/packages

# installing ssh server is in packages
#RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# Use this command to set the root password.
#RUN echo 'root:screencast' | chpasswd

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
