FROM node:7.1

RUN npm install -g elm elm-upgrade
COPY elm-format /usr/local/bin/
RUN useradd --user-group --create-home --shell /bin/false app

ENV HOME=/home/app
USER app
WORKDIR $HOME
CMD ["bash"]
