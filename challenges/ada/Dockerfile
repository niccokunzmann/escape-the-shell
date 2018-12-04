FROM escapetheshell/ssh

#
# Create the user the hacker used to login.
#
RUN useradd -d /home/ada -m ada
RUN echo 'ada:escapetheshell' | chpasswd
#
# Add the user to the SUDOers group
#
RUN usermod -aG sudo ada
RUN chsh -s /bin/bash ada

#
# Create a greetings file.
#
COPY etc-profile /etc/profile1
RUN cat /etc/profile1 >> /etc/profile && rm /etc/profile1

#
# Infect the computer.
#
COPY infected.bashrc /root/.bashrc
COPY infected.bashrc /home/ada/.bashrc
COPY infected.file /etc/init.d/r4ven
#
# Make sure we can check that the file exists.
#
RUN chmod +r /root && chmod g-r /root/.bashrc && chmod a-r /root/.bashrc


