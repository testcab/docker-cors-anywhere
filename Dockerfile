FROM node:12-alpine

ENV NODE_ENV=production
ARG version=latest
RUN npm install -g cors-anywhere@$version
WORKDIR /usr/local/lib/node_modules
CMD ["node", "cors-anywhere/server.js"]

EXPOSE 8080
