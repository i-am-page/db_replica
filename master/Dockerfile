# First stage: Debugging tools
FROM ubuntu:20.04 as debug
RUN apt-get update && apt-get install -y iputils-ping

# Second stage: MySQL
FROM mysql:8.0

COPY ./config/my.cnf /etc/my.cnf

COPY ./init/ /docker-entrypoint-initdb.d/

COPY --from=debug /bin/ping /bin/ping
