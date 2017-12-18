FROM node
EXPOSE 8001
RUN mkdir -p /usr/git
WORKDIR /usr/git
RUN git clone https://github.com/chenshuai2144/ant-design-pro-site.git \
  && git submodule init \
  && git submodule update --recursive \
  && cd ant-design-pro-site \
  && npm install yarn -g \
  && yarn \
  && cd scaffold && yarn 

WORKDIR /usr/git/ant-design-pro-site
CMD [ "npm", "start" ]
