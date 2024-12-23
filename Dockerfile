FROM node:alpine

# Set working directory
WORKDIR /app

# Copy only package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY ./ ./

# Expose the port the app runs on
EXPOSE 8081

# Default command to start the application
CMD ["npm", "start"]