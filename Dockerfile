FROM node:alpine
WORKDIR NeteaseMusic
RUN \
    apk add --no-cache git && \
    git clone https://github.com/jsososo/NeteaseMusic.git /NeteaseMusic/ && \
    npm i -g @vue/cli && \
    npm i && \
    npm run build
#CMD ["npm", "start"]
#EXPOSE 80
