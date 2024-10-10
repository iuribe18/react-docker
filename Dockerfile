FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME uribe
ENV MONGODB_CLUSTER_ADDRESS cluster0.4iqnr.mongodb.net
ENV MONGODB_USERNAME ivanuribegonzalez
ENV MONGODB_PASSWORD giFPJ5nQC6Dha8xN

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]