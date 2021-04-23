FROM node:latest

RUN ls

COPY . .

EXPOSE 4000

RUN ls
RUN npm install hexo-cli -g
RUN npm install
RUN npm install hexo
RUN npm install hexo-theme-next

CMD ["hexo", "server"]
