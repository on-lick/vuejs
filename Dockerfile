FROM git.skill17.com/images/node

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

EXPOSE 8080
CMD [ "http-server", "dist" ]
