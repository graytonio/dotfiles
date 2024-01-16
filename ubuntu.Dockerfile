FROM ubuntu:22.04

# Add minimal dependencies
RUN apt update
RUN (echo 2; echo 106) | apt -y install ansible
RUN apt -y install \
    git \
    ansible \
    curl \
    apt-transport-https \
    ca-certificates

# Add Normal User
RUN adduser --disabled-password --gecos "User" devuser
RUN adduser devuser sudo
RUN echo "devuser ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN touch ~devuser/.sudo_as_admin_successful
RUN chown -R root:sudo /usr/local

USER devuser
WORKDIR /home/devuser

WORKDIR /home/devuser/dotfiles
COPY . .
RUN ./install.sh

WORKDIR /home/devuser

CMD ["/usr/bin/env", "fish"]