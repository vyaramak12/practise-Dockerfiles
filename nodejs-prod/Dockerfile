FROM node:22-alpine
WORKDIR /myapp
COPY package*.json ./
RUN npm install --production
RUN adduser -D vinay
COPY --chown=vinay:vinay . .
USER vinay
EXPOSE 80
CMD ["node", "index.js"]

