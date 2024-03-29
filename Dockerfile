FROM node:16-alpine

RUN apk update

WORKDIR /app

COPY package*.json ./
COPY tsconfig*.json ./

COPY src /app/src

RUN npm install
RUN npm run build

EXPOSE 3000

CMD ["node", "./dist/index.js"]