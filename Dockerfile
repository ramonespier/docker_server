FROM node:20

WORKDIR /usr/app

RUN npm init -y && \
    npm pkg set type="module" && \
    npm pkg set scripts.dev="nodemon --legacy-watch index.js" && \
    npm install express nodemon

COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]