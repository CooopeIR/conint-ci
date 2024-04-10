
FROM node:21-alpine3.18

WORKDIR /frontend

COPY package*.json /frontend/

RUN npm install

COPY . /frontend/

RUN npm run build

EXPOSE 8080

CMD ["npm", "run", "dev"]