# build
FROM node:lts-alpine as build-stage
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install
COPY . .
RUN yarn build

# serve
FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
COPY enable-md-image.sh enable-md-image.sh
RUN sh ./enable-md-image.sh
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]