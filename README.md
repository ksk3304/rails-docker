# README

- RailsプロジェクトをDocker化するための手順書です。

## git cloneコマンドで、Railsプロジェクトをインストールする
- ターミナルから、Railsプロジェクトを置きたいディレクトリに移動し、下記のコマンドを入力してプロジェクトをインストールして下さい。
- git clone https://github.com/ksk3304/rails-docker.git

## Dockerfileを作成する
- プロジェクトのルートディレクトリに、Dockerfileを作って下さい。コードは下記リンク先にありますので、そちらをコピペして下さい。
- https://ksk-it043.hatenablog.com/entry/2024/10/18/090500

## docker-compose.ymlを作成する
- プロジェクトのルートディレクトリに、docker-compose.ymlを作って下さい。コードは上記と同様に下記リンク先にありますので、そちらをコピペして下さい。
- https://ksk-it043.hatenablog.com/entry/2024/10/18/090500

## database.ymlを更新する
- プロジェクトのconfigディレクトリにあるdatabase.ymlファイルに、下記の3行を追記して下さい。追記する場所は、defaultセクションになります。他の項目にならって、インデントを忘れない様に注意して下さい。
- host: db
- username: <%= ENV["MYAPP_DATABASE_USERNAME"] %>
- password: <%= ENV["MYAPP_DATABASE_PASSWORD"] %>

## 環境変数を定義する
- プロジェクトのルートディレクトリに、.envファイルを作成し、下の2行を書き込んで下さい。
- MYAPP_DATABASE_USERNAME=postgres
- MYAPP_DATABASE_PASSWORD=postgres
- また書き込んだ後に、.envファイルをgitの対象から外すために、.gitignoreに以下の通り追記して下さい。場所はどこでも構いません。
- /.env

## Dockerfileからイメージをビルドする
- ターミナルから下記コマンドにより、イメージをビルドして下さい。
- docker-compose build

## コンテナを起動する
- ターミナルから下記コマンドにより、コンテナを起動して下さい。
- docker-compose up -d

## 不明点など
- リンク先のブログにて解説しておりますので、そちらを見ていただければ幸いです。
- https://ksk-it043.hatenablog.com/entry/2024/10/18/090500
