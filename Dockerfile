FROM node
ADD . . 
EXPOSE 5000
RUN npm install
ENTRYPOINT ["npm", "start"]
