FROM node:18.18 as node
FROM ruby:3.1.0

#　nodeイメージからyarn,nodeをコピーする
COPY --from=node /opt/yarn-* /opt/yarn
COPY --from=node /usr/local/bin/node /usr/local/bin/
COPY --from=node /usr/local/lib/node_modules/ /usr/local/lib/node_modules/

RUN ln -fs /usr/local/lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npm \
    && ln -fs /usr/local/lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npx \
    && ln -fs /usr/local/lib/node /usr/local/bin/nodejs \
    && ln -fs /opt/yarn/bin/yarn /usr/local/bin/yarn \
    && ln -fs /opt/yarn/bin/yarn /usr/local/bin/yarnpkg



RUN apt-get update -qq && apt-get install -y vim

RUN mkdir /myapp
WORKDIR /myapp

# yarnを更新する
COPY package.json /myapp/package.json
COPY yarn.lock  /myapp/yarn.lock
RUN yarn install

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

RUN gem update --system
RUN bundle update --bundler

RUN bundle install
COPY . /myapp

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]