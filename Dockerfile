#FROM  katharostech/quasar-cli:latest
FROM  node:8-alpine
USER root

RUN npm install -g vue-cli && \
    npm install -g quasar-cli && \
    npm install -g @vue/cli && \
    npm install -g @vue/cli-init 

RUN mkdir /opt/app

WORKDIR /opt/app

COPY package.json /opt/app/
RUN npm install

#COPY . /opt/app

EXPOSE 8080


#RUN mkdir /home/node/app


# VOLUME [ "/home/node/app" ]
#WORKDIR /home/node/app

CMD /bin/sh
