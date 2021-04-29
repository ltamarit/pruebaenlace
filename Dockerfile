FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install sudo
RUN apt-get install nano
RUN apt-get install iproute2 -y
RUN apt-get install iputils-ping
RUN apt-get install -y openssh-server
RUN apt-get install dnsutils -y
RUN mkdir /var/run/sshd
RUN useradd -m -G sudo -s /bin/bash alumno
RUN echo "alumno:alumno" | chpasswd
RUN useradd -m -G sudo -s /bin/bash cliente
RUN echo "cliente:cliente" | chpasswd
CMD ["/usr/sbin/sshd", "-D"]
