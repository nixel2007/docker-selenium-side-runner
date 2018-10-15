FROM node:10-alpine

LABEL Author="Nikita Gryzlov <nixel2007@gmail.com>"

# USER root

# RUN apt-get update && \ 
#     apt-get install -y \
#     curl \
#     gnupg2 \
#     && rm -rf /var/lib/apt/lists/*

# RUN curl -sL https://deb.nodesource.com/setup_10.x | bash

# RUN apt-get update && \ 
#     apt-get install -y \
#     nodejs \
#     && rm -rf /var/lib/apt/lists/*

RUN npm install -g selenium-side-runner

ADD docker-entrypoint.sh /opt/bin/docker-entrypoint.sh
RUN chmod +x /opt/bin/docker-entrypoint.sh

RUN mkdir /sides

WORKDIR /root

VOLUME [ "/sides" ]

CMD "/opt/bin/docker-entrypoint.sh"
