# google-oauth2-rails-app

OAuth2 学習用（Google 認証）

# 環境

Ruby on Rails
MySQL
Docker

# 認証

OmniAuth の Google OAuth2 ストラテジーを使用。
https://github.com/omniauth/omniauth/wiki/List-of-Strategies

# 環境作成手順（備忘録）
docker-compose.yml, Dockerfileを書く
`docker-compose run --no-deps web rails new . --force --database=mysql`でRailsファイル生成。（--no-depsで依存先（DB）コンテナ起動しないようにしている）
docker-compose build
