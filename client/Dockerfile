FROM node:20.17.0-slim AS building

WORKDIR /app

COPY package*.json ./
RUN npm install --production

COPY . .
RUN npm run build

FROM nginx:stable-alpine

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=building /app/dist /usr/share/nginx/html
