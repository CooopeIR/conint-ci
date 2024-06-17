FROM node:18-alpine

WORKDIR /app

COPY package*.json /app/

RUN npm install

COPY . /app/

ENV DB_DIALECT=mariadb
ENV DB_USER=todo_admin
ENV DB_PW=admin-pw
ENV DB_HOST=mariadb-prod.c1gwkiqyc9gp.us-east-1.rds.amazonaws.com
ENV DB_NAME=tododot

EXPOSE 3000
EXPOSE 8080
EXPOSE 3306

CMD ["npm", "start"]