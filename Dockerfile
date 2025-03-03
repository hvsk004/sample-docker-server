
# Pull the Node.js Docker image:
FROM node:22.14.0-alpine

# Set working directory
WORKDIR /app

# Copying package.json and package-lock.json files:
COPY package.json ./

# Install the dependencies:
RUN npm install

# Copying the rest of the files:
COPY . .

# Expose the port: 
EXPOSE 8080

# Start the application:
CMD ["node", "server.js"]