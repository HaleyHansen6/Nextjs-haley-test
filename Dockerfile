FROM node:18-alpine

WORKDIR /frontend

COPY package*.json ./

RUN npm install

COPY . .

# Build the Next.js app
RUN yarn build

EXPOSE 3000

# Run the Next.js app in production mode
CMD npm run start
