FROM node:16

WORKDIR /app

ADD ./packages/client/lib /app/packages/client/lib
COPY ./packages/client/package.json /app/packages/client/package.json
ADD ./packages/server/lib /app/packages/server/lib
COPY ./packages/server/package.json /app/packages/server/package.json

COPY ./package.json /app
COPY ./package-lock.json /app
COPY ./lerna.json /app

RUN npm install --production

CMD [ "npm", "start" ]