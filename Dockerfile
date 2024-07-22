FROM node:19.9.0-alpine AS builder

WORKDIR /app

COPY package*.json .

RUN npm install

ENV NEXT_TELEMETRY_DISABLED 1

COPY . .

# build the app
RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]