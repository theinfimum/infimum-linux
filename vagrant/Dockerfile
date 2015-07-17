FROM infimum-glibc-aleph
MAINTAINER Justin Towson <justin@theinfimum.org>

# Update all packages to the latest
#RUN dnf -y upgrade

#RUN dnf -y install initscripts openssh-server sudo

VOLUME ["/vagrant"]

#RUN useradd vagrant

#RUN echo "vagrant ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

RUN echo "UseDNS no" >> /etc/ssh/sshd_config

USER vagrant

RUN mkdir ~/.ssh; chmod 700 ~/.ssh/

RUN echo "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA6NF8iallvQVp22WDkTkyrtvp9eWW6A8YVr+kz4TjGYe7gHzIw+niNltGEFHzD8+v1I2YJ6oXevct1YeS0o9HZyN1Q9qgCgzUFtdOKLv6IedplqoPkcmF0aYet2PkEDo3MlTBckFXPITAMzF8dJSIFo9D8HfdOV0IAdx4O7PtixWKn5y2hMNG0zQPyUecp4pzC6kivAIhyfHilFR61RGL+GPXQ2MWZWFYbAGjyiYJnAmCP3NOTd0jMZEnDkbUvxhMmBYSdETk1rRgm+R4LOzFUGaHqHDLKLX+FIPKcF96hrucXzcWyLbIbEgE98OHlnVYCzRdK8jlqm8tehUc9c9WhQ== vagrant insecure public key" > ~/.ssh/authorized_keys; chmod 600 ~/.ssh/authorized_keys
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
