FROM node:18

WORKDIR /usr/server/app

COPY package*.json ./

RUN npm install

COPY . .

CMD ["npm", "run", "start"]
