FROM node:20.17.0-slim AS base

WORKDIR /app

COPY package*.json ./

RUN npm install 

COPY . .

FROM base AS production

ENV NODE_PATH=./dist

RUN npm run build