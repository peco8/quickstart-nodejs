# Using official php runtime base image
FROM node:argon

MAINTAINER "Toshiki Inami <t-inami@arukas.io>"

# Set the applilcation directory
ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# Install app dependencies
COPY package.json $APP_HOME/
RUN npm install

# Bundle app source
COPY . $APP_HOME

# Make port 8080 available for publish
EXPOSE 8080

# Start server
CMD [ "npm", "start" ]
