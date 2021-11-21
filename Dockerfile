FROM node:8-buster as build
WORKDIR /app
COPY package.json ./
RUN npm i
RUN npm ci
COPY . .
RUN npm run build
ENTRYPOINT npm start
