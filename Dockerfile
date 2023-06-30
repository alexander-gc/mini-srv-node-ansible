# Base image
FROM node:16.13.1-alpine

# Create app directory
WORKDIR /usr/src/app

# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package.json package-lock.json* ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose to world outside
EXPOSE 5000

# Start the server
CMD [ "node", "index.js" ]
