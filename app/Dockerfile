FROM ruby:3.0.2

# 必要なツールを入れる
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

ENV APP_PATH /myapp

# workディレクトリ指定
RUN mkdir $APP_PATH
# NOTE: composeでvolumes指定している
WORKDIR $APP_PATH

# Gemインストール
COPY Gemfile $APP_PATH/Gemfile
COPY Gemfile.lock $APP_PATH/Gemfile.lock
RUN bundle install

COPY . $APP_PATH

# コンテナ起動時に実行するスクリプトを配置
COPY entrypoint.sh /usr/bin
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]

# 必要？
EXPOSE 3000

CMD ["rails", "s", "-p", "3000", "-b", "0.0.0.0"]