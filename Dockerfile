#specify the base image
FROM node:alpine
#install some dependcies
WORKDIR /usr/app
Copy ./package.json ./
RUN npm install
COPY ./ ./
#Default command
CMD ["npm", "start"]
