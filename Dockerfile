FROM ubuntu
RUN apt update && apt upgrade -y -o Dpkg::Options::="--force-confdef"
RUN apt install iputils-ping
COPY ./kubectl /usr/local/bin
COPY ./kubectl-vsphere /usr/local/bin
COPY ./docker-credential-vsphere /usr/local/bin
RUN chown -R root:root /usr/local/bin/kubectl
RUN chown -R root:root /usr/local/bin/kubectl-vsphere
RUN chown -R root:root /usr/local/bin/docker-credential-vsphere
RUN chmod a+x /usr/local/bin/kubectl
RUN chmod a+x /usr/local/bin/kubectl-vsphere
RUN chmod a+x /usr/local/bin/docker-credential-vsphere


