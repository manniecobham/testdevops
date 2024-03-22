# Use Node.js version 14 as base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to container
COPY package.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port your application runs on
EXPOSE 4000

# Command to run your application
CMD ["node", "dist"]
