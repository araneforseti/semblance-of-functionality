FROM node:latest

RUN ls
RUN mkdir website

WORKDIR website

COPY . .

EXPOSE 4000

RUN npm install
RUN npm install hexo-cli -g
RUN npm install hexo
RUN npm install hexo-theme-next

RUN hexo g

CMD ["hexo", "server"]
