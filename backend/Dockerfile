
FROM node:21-alpine3.18

WORKDIR /app

COPY package*.json /app/

RUN npm install

COPY . /app/

ENV DB_DIALECT=mariadb
ENV DB_USER=todo-admin
ENV DB_PW=admin-pw
ENV DB_HOST=mariadb:3306
ENV DB_NAME=tododot

EXPOSE 3000

CMD ["npm", "start"]