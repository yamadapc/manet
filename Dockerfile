FROM node:6

RUN apt-get update
RUN apt-get install -y xvfb
RUN npm install -g slimerjs
RUN npm install -g phantomjs
RUN npm install -g manet
RUN apt-get install -y vim git wget libxrender-dev libasound2 libdbus-glib-1-2 libgtk2.0-0 bzip2 python

CMD manet --port $PORT
