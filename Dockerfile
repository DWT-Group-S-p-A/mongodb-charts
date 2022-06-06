FROM quay.io/mongodb/charts:19.12.1

LABEL maintainer="thepliable2@gmail.com"

# RUN apt-get update
# USER charts
ARG EMAIL
ARG PASSWORD

ENV EMAIL=${EMAIL} \
    PASSWORD=${PASSWORD}
CMD chmod +x entrypoint.sh

COPY entrypoint.sh /usr/bin

RUN ["chmod", "+x", "/usr/bin/entrypoint.sh"]
RUN ["chown", "1000960000:root", "/usr/bin/entrypoint.sh"]
#RUN ["mkdir", "/mongodb-charts/volumes/logs"]

#RUN ["mkdir", "/mongodb-charts/volumes/keys"]

#RUN ["mkdir", "/mongodb-charts/volumes/db-certs"]

#RUN ["mkdir", "/mongodb-charts/volumes/web-certs"]

#RUN ["chown", "1000960000:root", "/mongodb-charts/volumes/logs"]
#RUN ["chown", "1000960000:root", "/mongodb-charts/volumes/keys"]
#RUN ["chown", "1000960000:root", "/mongodb-charts/volumes/db-certs"]
#RUN ["chown", "1000960000:root", "/mongodb-charts/volumes/web-certs"]
# USER root
ENTRYPOINT [ "entrypoint.sh" ]

