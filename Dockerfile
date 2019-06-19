FROM ubuntu
RUN apk add -q --update --no-cache bash &&\
    rm -rf /var/cache/apk/ &&\
    rm -rf /tmp/*
COPY **/**.zip /
COPY docker-config/setenv.sh /usr/local/tomcat/bin/setenv.sh
RUN chmod ugo+x /usr/local/tomcat/bin/setenv.sh
VOLUME ["/"]
CMD ["/usr/local/bin/run"]
