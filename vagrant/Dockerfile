FROM infimum-uclibc-aleph
MAINTAINER Justin Towson <justin@theinfimum.org>

VOLUME ["/vagrant"]

RUN wget -O /etc/ssh/ssh_host_rsa_key https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant;
RUN chmod 600 /etc/ssh/ssh_host_rsa_key

#RUN echo "vagrant ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

#RUN echo "PasswordAuthentication no" >> /etc/ssh/sshd_config
RUN echo "UseDNS no" >> /etc/ssh/sshd_config

USER vagrant

RUN chmod go-w ~/
RUN mkdir ~/.ssh
RUN chmod 700 ~/.ssh/
RUN wget -O - https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub >> ~/.ssh/authorized_keys
RUN chmod 600 ~/.ssh/authorized_keys

USER root

#RUN
#RUN export
#RUN chkconfig sshd on
#RUN systemctl sshd enable

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]

#CMD /sbin/service sshd start

#CMD /sbin/init
