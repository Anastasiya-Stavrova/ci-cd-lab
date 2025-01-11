FROM node:20.17.0-slim

WORKDIR /app

COPY package.json ./
RUN npm install --production

COPY . .

CMD ["node", "index.ts"]
