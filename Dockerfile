# Use an official Node.js runtime as the base image
FROM node:18.13.0

# Set the working directory in the container
WORKDIR /

# Copy the package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of your application's source code to the container
COPY . .

# Expose the port your app will run on
EXPOSE 2048

# Define the command to run your Node.js application
CMD [ "node", "./bin/www" ]
