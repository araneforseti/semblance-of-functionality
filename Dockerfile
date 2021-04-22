FROM node:latest

RUN ls

COPY . .

EXPOSE 4000

RUN ls
RUN npm install hexo-cli -g
RUN npm install

CMD ["hexo", "server"]
