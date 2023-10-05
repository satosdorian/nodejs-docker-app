# Use the official Node.js image as a base
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy your application code into the container
COPY . .

# Set the NODE_ENV environment variable to "development"
ENV NODE_ENV=development

# Expose port 3000
EXPOSE 3000

# Start the application with nodemon
CMD ["npx", "nodemon", "app.js"]

