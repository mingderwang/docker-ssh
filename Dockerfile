# Pull base image
FROM ubuntu:18.04
# Installation
RUN apt-get update
RUN apt-get install -y openssh-server sudo
# Create vagrant user with sudo privilege
RUN useradd -m -d /home/vagrant -s /bin/bash vagrant
RUN echo 'vagrant:vagrant' | chpasswd
RUN echo 'vagrant ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/vagrant
RUN chmod 440 /etc/sudoers.d/vagrant
# Run SSH service
RUN mkdir /var/run/sshd
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
