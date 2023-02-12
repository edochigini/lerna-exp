FROM node:16

RUN curl -f https://get.pnpm.io/v6.16.js | node - add --global pnpm 

WORKDIR /app

ADD ./packages/client/lib /app/packages/client/lib
COPY ./packages/client/package.json /app/packages/client/package.json
ADD ./packages/server/lib /app/packages/server/lib
COPY ./packages/server/package.json /app/packages/server/package.json

COPY ./package.json /app
COPY ./pnpm-lock.yaml /app
COPY ./pnpm-workspace.yaml /app
COPY ./lerna.json /app

RUN pnpm install --frozen-lockfile --prod

CMD [ "pnpm", "start" ]