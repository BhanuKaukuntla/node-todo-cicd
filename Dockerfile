FROM node:12.2.0-alpine
WORKDIR app
RUN npm install
COPY . ./
RUN npm run test
EXPOSE 8000
CMD ["npm", "run", "dev"]
