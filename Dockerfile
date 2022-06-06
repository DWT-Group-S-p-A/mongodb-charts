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


USER root
ENTRYPOINT [ "entrypoint.sh" ]

