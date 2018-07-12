FROM node:10.6.0

MAINTAINER Huiyun Zheng(hadwinzhy@gmail.com)

EXPOSE 4000

WORKDIR /blog

VOLUME [ "/blog" ]

RUN npm install hexo-cli -g

COPY . /blog

RUN npm install

CMD [ "bash", "-c", "hexo server" ]
