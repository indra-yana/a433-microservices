FROM node:16-alpine
WORKDIR /src
COPY package*.json .

ENV PORT=3001 AMQP_URL=amqp://localhost:5672
RUN npm install
COPY ./*.js .
CMD ["npm", "run", "start"]

EXPOSE 3001
