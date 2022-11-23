# Use a Node 16 base image
FROM node:16-alpine 
LABEL org.opencontainers.image.source ="https://github.com/Ninoverstraeten2003/BS_PE_Frontend"
# Set the working directory to /app inside the container
WORKDIR /app
# Move the package.json and package-lock.json into the container to install dependencies
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy app files
COPY . .
# Build the app
RUN npm run build
# Expose the port on which the app will be running
EXPOSE 3000
# Start the app
CMD [ "npm","start" ]



