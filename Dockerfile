# Use the official Node.js 18 Alpine image
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and yarn.lock separately and install dependencies
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

# Copy the rest of your application
COPY . .

# Build your application (assuming it generates production files in the "dist" directory)
RUN yarn run build

# Expose the port that serve will listen on
EXPOSE 5000

# Start the application using serve
CMD ["npx", "serve", "-s", "dist"]
