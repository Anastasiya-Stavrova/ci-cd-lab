FROM node:20.17.0-slim

WORKDIR /app

COPY ./package.json ./
RUN npm install --legacy-peer-deps

COPY . .

RUN npm run start
