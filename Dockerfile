FROM quay.io/keycloak/keycloak:26.2.1

USER root

RUN wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-j-8.3.0.tar.gz -O /tmp/mysql-connector-j.tar.gz && \
    tar -xvf /tmp/mysql-connector-j.tar.gz -C /tmp/ && \
    cp /tmp/mysql-connector-j-8.3.0/mysql-connector-j-8.3.0.jar /opt/keycloak/lib/ && \
    rm -rf /tmp/*

USER keycloak