FROM node:10

# Create app directory
WORKDIR /code

# Install app dependencies
ADD package*.json ./
RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "app.js" ]