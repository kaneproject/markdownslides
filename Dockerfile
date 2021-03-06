FROM ubuntu
MAINTAINER Adolfo Sanz De Diego asanzdiego@gmail.com
ENV VERSION 0.0.2
# Software dependencies
RUN apt-get update && \
    apt-get -y install pandoc wget unzip npm chromium-browser \
        texlive-latex-base texlive-fonts-recommended texlive-latex-extra && \
    npm install -g decktape
WORKDIR /home/
RUN wget https://github.com/asanzdiego/markdownslides/archive/master.zip && \
    unzip master.zip
WORKDIR /home/markdownslides-master
ADD . /home/markdownslides-master
