FROM node:12
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm install fastify --save
COPY . .
EXPOSE 3000
CMD ["node", "server"]