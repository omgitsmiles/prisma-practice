FROM node:21

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

# RUN prisma generate

EXPOSE 3000

CMD ["npm", "start"]