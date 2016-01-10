FROM node:5
RUN npm install -g mathoid
RUN npm install -g mocha
RUN apt-get update && apt-get install -y openjdk-7-jre
WORKDIR /usr/local/lib/node_modules/mathoid/
RUN cp config.dev.yaml config.yaml
EXPOSE 10044
CMD ["node","server.js"]
