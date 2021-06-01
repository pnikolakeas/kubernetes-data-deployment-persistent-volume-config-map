FROM node:14-alpine

ENV STORY_FOLDER=story

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "node", "app.js" ]