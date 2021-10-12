#!/usr/bin/bash

echo ディレクトリ名を入力してください：
read projectName
echo $projectName

md ..
mv docker-laravel $projectName
md $projectName

echo プロジェクト名を $projectName に変更しました。

echo docker環境を作成します
docker compose up -d --build

echo appコンテナに入ります
docker compose exec app bash

echo composerをinstallします
composer install

echo .env.exampleの内容を.envにコピペしま
cp .env.example .env

echo .env に APP_KEY を書き込みます
php artisan key:generate

echo public/storage から storage/app/public へのシンボリックリンクを張ります
php artisan storage:link

echo storage, bootstrap/cache はフレームワークからファイル書き込みが発生するので、書き込み権限を与える必要があります。
chmod -R 777 storage bootstrap/cache

echo migrateします
php artisan migrate

echo appコンテナから出ます
exit

echo http://127.0.0.1:8080/ でlaravel表示
open http://127.0.0.1:8080/