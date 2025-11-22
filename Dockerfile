FROM node:18-alpine

WORKDIR /app

COPY package.json ./
# Si tienes dependencias: RUN npm install
RUN npm install --production || true

COPY . .

EXPOSE 8080

CMD ["node", "index.js"]
