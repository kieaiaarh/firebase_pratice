FROM node

RUN mkdir -p /nuxt
COPY . /nuxt
WORKDIR /nuxt

RUN chmod u+x /usr/local/bin/yarn && \ 
    yarn global add nuxt && \
    yarn global add vue-cli create-nuxt-app

ENV HOST 0.0.0.0
EXPOSE 3000
CMD ["yarn", "start"]