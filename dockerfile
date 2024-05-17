FROM node:18-alpine

WORKDIR /usr/server/app

COPY ./package.json ./

RUN npm install

COPY ./ .

RUN npm run build # will build remix app

ENV NODE_ENV=production

EXPOSE 8000

CMD ["npm", “run” ,"start"]
