FROM node:18.20.8-slim
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN npm install --save \
  @opentelemetry/api \
  @opentelemetry/auto-instrumentations-node
COPY . .
EXPOSE 8080
CMD ["node", "app.js"]