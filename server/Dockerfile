FROM node:20.17.0-slim

WORKDIR /app

COPY ./package.json ./
RUN npm i

COPY . .

CMD ["npm", "run", "start"]
