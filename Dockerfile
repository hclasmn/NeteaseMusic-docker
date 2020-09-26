FROM node:alpine
WORKDIR QQMusicApi
RUN \
    apk add --no-cache git && \
    git clone https://github.com/jsososo/NeteaseMusic.git /NeteaseMusic/ && \
    npm i && \
    npm run build
CMD ["npm", "start"]
EXPOSE 80
