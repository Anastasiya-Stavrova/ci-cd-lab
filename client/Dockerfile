FROM node:20.17.0-slim AS builder

RUN mkdir app
WORKDIR /app

COPY ./package.json ./
RUN npm install --production

COPY . .
RUN cd app
RUN npm run build

FROM nginx:stable-alpine

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/dist /usr/share/nginx/html
