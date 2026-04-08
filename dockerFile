# write all the instructions to build the image
FROM node:20-alpine AS build
# in case of maven #
# FROM maven:3.8.5-openjdk-17-slim AS build
 
WORKDIR /app
COPY package.json ./
# COPY pom.xml ./
 
RUN npm install
# mvn spring-boot:run
COPY . .
 
EXPOSE 3000
CMD ["npm", "start"]
#CMD ["mvn","spring-boot:run"]
 
