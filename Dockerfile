FROM adbv/base

LABEL maintainer="Günther Morhart"

#
# Environment variables dd
#



ENV MYSQL_MAJOR 8.0
ENV MYSQL_VERSION 8.0.15-1debian9
WORKDIR /app
COPY startup.sh /startup.sh
RUN apk add --update mysql mysql-client && rm -f /var/cache/apk/*
COPY my.cnf /etc/mysql/my.cnf

#
# Ports
#
EXPOSE 3306 33060


CMD ["/startup.sh"]
