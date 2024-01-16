FROM ubuntu:22.04

# Add minimal dependencies
RUN apt update
RUN (echo 2; echo 106) | apt -y install ansible
RUN apt -y install \
    git \
    ansible \
    curl \
    apt-transport-https

# Add Normal User
RUN adduser --disabled-password --gecos "User" devuser
RUN adduser devuser sudo
RUN echo "devuser ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN touch ~devuser/.sudo_as_admin_successful
RUN chown -R root:sudo /usr/local

USER devuser
WORKDIR /home/devuser

RUN git clone "https://github.com/graytonio/dotfiles.git"
WORKDIR /home/devuser/dotfiles
RUN ./install.sh

WORKDIR /home/devuser

CMD ["/usr/bin/env", "fish"]