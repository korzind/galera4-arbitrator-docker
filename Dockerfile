FROM debian:buster-slim

RUN apt-get update && apt-get install -y wget curl

RUN wget https://downloads.mariadb.com/MariaDB/mariadb_repo_setup && \
    chmod +x mariadb_repo_setup && \
    ./mariadb_repo_setup && \
    apt-get install -y galera-arbitrator-4

CMD ["/usr/bin/garbd", "start"]
