FROM node:5
ADD ./docker-npm-install.sh /docker-npm-install.sh
ADD ./docker-apt-get-install.sh /docker-apt-get-install.sh

ADD ./sources.list /etc/apt/sources.list

RUN /docker-apt-get-install.sh librsvg2-dev
RUN /docker-npm-install.sh -g mathoid@0.6.4

WORKDIR /usr/local/lib/node_modules/mathoid/

RUN cp config.dev.yaml config.yaml
RUN sed -i 's/speechOn: true/speechOn: false/g' config.yaml
RUN sed -i 's/png: true/png: false/g' config.yaml
RUN sed -i 's/speakText: true/speakText: false/g' config.yaml

ADD ./kickstart.sh /kickstart.sh
RUN chmod +x /kickstart.sh

EXPOSE 10044
CMD ["/kickstart.sh"]
