# Use Node.js 14 as the base image
FROM node:14

# Create and set the working directory
WORKDIR /app

# Copy the package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the code into the container
COPY . .

# Expose the app's port
EXPOSE 3000

# Command to run the app
CMD ["node", "server.js"]
