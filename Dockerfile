FROM mysql/mysql-server

ADD temp/startup.sh /docker-entrypoint-initdb.d

expose 3306
