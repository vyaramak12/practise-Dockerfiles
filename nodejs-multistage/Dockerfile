FROM node:22-alpine as dependencies
WORKDIR /myapp
COPY package*.json ./
RUN npm ci

FROM node:22-alpine as build
WORKDIR /myapp
COPY --from=dependencies /myapp/node_modules ./node_modules
COPY . . 
RUN npm run build

FROM node:22-alpine as prod
WORKDIR /myapp
COPY package*.json ./
RUN npm ci --omit=dev
COPY --from=build /myapp/dist ./dist
EXPOSE 80
USER node
CMD ["node", "dist/server.js']
