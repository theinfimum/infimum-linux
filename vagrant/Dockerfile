FROM infimum-glibc-aleph
MAINTAINER Justin Towson <justin@theinfimum.org>

# Update all packages to the latest
#RUN dnf -y upgrade

#RUN dnf -y install initscripts openssh-server sudo

VOLUME ["/vagrant"]

#RUN useradd vagrant

#RUN echo "vagrant ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

#RUN echo "PasswordAuthentication no" >> /etc/ssh/sshd_config
RUN echo "UseDNS no" >> /etc/ssh/sshd_config

USER vagrant

RUN mkdir ~/.ssh; chmod 700 ~/.ssh/

RUN wget -O - https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub >> ~/.ssh/authorized_keys
RUN chmod 600 ~/.ssh/authorized_keys

USER root

#RUN
#RUN export
#RUN chkconfig sshd on
#RUN systemctl sshd enable

RUN wget -O /etc/ssh/ssh_host_rsa_key https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant;
RUN chmod 600 /etc/ssh/ssh_host_rsa_key

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]

#CMD /sbin/service sshd start

#CMD /sbin/init
