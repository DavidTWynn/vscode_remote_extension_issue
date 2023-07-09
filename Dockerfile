FROM ubuntu

ARG PASSWORD

# change root password to `ubuntu`
RUN echo "root:${PASSWORD}" | chpasswd

# Update ubuntu
RUN apt update && apt upgrade -y

# Install openssh server
RUN apt install openssh-server -y

# allow root to login
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config

EXPOSE 22

# Required to run sshd. (Also done by service start sshd)
RUN mkdir -p /run/sshd

RUN apt install net-tools -y
RUN apt install iputils-ping -y

# run ssh server
CMD ["/usr/sbin/sshd", "-D"]
