FROM node:12
RUN mkdir /app
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . ./
RUN npm run build
EXPOSE 3000
CMD [ "node", "__sapper__/build" ]