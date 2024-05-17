FROM node:18-alpine

WORKDIR /usr/server/app

COPY ./package.json ./

RUN npm install

COPY ./ .

RUN npm run build # will build remix app

ENV NODE_ENV=production

CMD ["npm", “run” ,"start"]
