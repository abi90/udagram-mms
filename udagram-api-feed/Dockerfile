FROM node:12
# FROM node:18
## Create app directory
WORKDIR /usr/src/app
# ENV PGSSLMODE="no-verify"
# ENV NODE_OPTIONS="--openssl-legacy-provider"
## Install app dependencies
## A wildcard is used to ensure both package.json AND package-lock.json are copied where available (npm@5+)
COPY package*.json ./
RUN npm ci 
## Bundle app source
COPY . .
EXPOSE 8080
CMD [ "npm", "run", "prod" ]