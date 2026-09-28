FROM node
WORKDIR /mycode
COPY package*.json /mycode/
RUN npm install
COPY . . 
EXPOSE 80
CMD ["node", "index.js"]
