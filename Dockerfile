# Fetching the minified node image on apline linux
FROM node:slim

# Declaring env
ENV NODE_ENV prod

# Setting up the work directory
WORKDIR /DevsuTestMerhan

# Copying all the files in our project
COPY . .

# Installing dependencies
RUN npm install

# Starting our application
CMD [ "npm", "start" ]


# Exposing server port
EXPOSE 3001