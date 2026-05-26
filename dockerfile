FROM node:18-alpine

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile --production

COPY app.js ./

EXPOSE 3001

CMD ["node", "app.js"]
