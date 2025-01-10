# Use a smaller base image for better performance
FROM node:16-slim

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies first
COPY package*.json ./

# Install all dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 80 for the app
EXPOSE 80

# Command to start the application
CMD ["node", "index.js"]