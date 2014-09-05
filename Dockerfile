FROM ubuntu:14.04
MAINTAINER Taylor taylormonacelli@gmail.com
RUN apt-get -qq update
RUN apt-get install -y git-core emacs bundler
RUN cd ~
RUN git init
RUN git remote add origin https://github.com/TaylorMonacelli/dotfiles.git
RUN git fetch
RUN git checkout -ft origin/master||:
RUN git clone https://github.com/TaylorMonacelli/cooking-infrastructure.git
WORKDIR /cooking-infrastructure
RUN git checkout master
RUN sudo bundle
WORKDIR /
RUN git clone https://github.com/TaylorMonacelli/emacs_batch_mode_practice.git
WORKDIR /emacs_batch_mode_practice/automated-testing-packages
RUN make test6
RUN make test6
RUN make test6
RUN make test6
