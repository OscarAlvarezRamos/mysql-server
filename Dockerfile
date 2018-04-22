version: '3.1'

services:

  db:
    image: mysql
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: P@ssw0rd

  adminer:
    image: adminer
    restart: always
    ports:
      - 8080:8080

