FROM node:6-alpine

WORKDIR /chat

COPY chat ./chat
COPY index.html ./
COPY server.js ./
COPY client.js ./   
COPY image/ .       
COPY package*.json ./
RUN npm install

CMD ["node", "./server.js"]
EXPOSE 5009
