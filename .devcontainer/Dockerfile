FROM dart:stable

RUN echo 'export PATH="$PATH":"$HOME/.pub-cache/bin"' >> /root/.bashrc
RUN dart --disable-analytics  
RUN dart pub global activate webdev

RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm
