FROM node:6.3

RUN npm install -g elm
RUN useradd --user-group --create-home --shell /bin/false app

ENV HOME=/home/app
USER app
WORKDIR $HOME
CMD ["bash"]
