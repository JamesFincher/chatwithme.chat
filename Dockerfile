FROM node:19.03.12-alpine3.12

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

CMD ["npm", "run", "preview"]
