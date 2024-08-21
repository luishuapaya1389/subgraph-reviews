FROM node:current-alpine3.20
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install && mv node_modules ../
COPY . .
EXPOSE 4002
RUN chown -R node /usr/src/app
USER node
CMD ["npm", "start"]