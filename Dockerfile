FROM mysql/mysql-server

RUN yum -y update
RUN yum install -y nano vi
RUN yum -y install wget
RUN uname -or

# WORKDIR tmp/

RUN wget https://www.mirrorservice.org/sites/dl.fedoraproject.org/pub/epel/7/x86_64/Packages/p/p7zip-16.02-10.el7.x86_64.rpm -P /tmp/
RUN wget https://www.mirrorservice.org/sites/dl.fedoraproject.org/pub/epel/7/x86_64/Packages/p/p7zip-plugins-16.02-10.el7.x86_64.rpm -P /tmp/

RUN rpm -U --quiet /tmp/p7zip-16.02-10.el7.x86_64.rpm
RUN rpm -U --quiet /tmp/p7zip-plugins-16.02-10.el7.x86_64.rpm



ADD temp/script.sh /docker-entrypoint-initdb.d

expose 3306
