# Fetching the minified node image on apline linux
FROM node:slim

# Declaring env
ENV NODE_ENV prod

# Setting up the work directory
WORKDIR /devops-daniel

# Copying all the files in our project
COPY . .

# Installing dependencies
RUN npm install

# Starting our application
#CMD [ "node", "index.js" ]
RUN npm start

# Exposing server port
EXPOSE 3001