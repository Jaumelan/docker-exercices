FROM node
WORKDIR /app
COPY package.json .
COPY package-lock.json .
RUN npm i
COPY app.js .
COPY public /app/public
EXPOSE 3000
CMD ["npm", "start"]