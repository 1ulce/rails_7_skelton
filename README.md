仕様
ruby 3.2.2
rails 7.1.2
環境 x86_64-darwin-22
postgresql
tailwind
importmap
turbo
slim

独自仕様
project_constant.yml

```
rbenv local 3.2.2
bundle init
vi Gemfile
bundle config set path vendor/bundle
bundle install
rails new . --css tailwind -d postgresql
rails db:create
```

``` config/application.rb
# タイムゾーンをTokyo（日本）にする
   config.time_zone = "Tokyo"
# デフォルトのロケールを日本にする
   config.i18n.default_locale = :ja
```