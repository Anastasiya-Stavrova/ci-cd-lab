FROM node:20.17.0-slim AS builder

WORKDIR /app/client

COPY ./package.json ./
RUN npm install --legacy-peer-deps

COPY . .
RUN npm run build

FROM nginx:stable-alpine

EXPOSE 5173

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/client/dist /usr/share/nginx/html
