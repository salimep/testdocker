## from centos 7 as base
### creating Container for NFS server for SIta images
FROM local/c7-systemd
MAINTAINER  SALIM Sys Admin
# create directory called Iborder
RUN mkdir iBorder
# installing NFS package
RUN yum -y upgrade && yum -y install nfs-utils && yum -y install net-tools
EXPOSE 111/udp 2049/tcp
ADD run.sh /usr/local/bin/run.sh
RUN chmod uo+x /usr/local/bin/run.sh
COPY run.sh /usr/local/bin/run.sh
RUN mkdir /mqshare
ENTRYPOINT ["/usr/local/bin/run.sh"]
