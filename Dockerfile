FROM node:alpine
WORKDIR /app
RUN npm install -g pm2
COPY package.json .
RUN npm install
COPY . .
CMD [ "pm2-runtime","server.js","--only","APP","-i","max"]