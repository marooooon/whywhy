# dockerが起動しているか確認
docker compose ps

# appコンテナ内ミドルウェアのバージョン確認
docker compose exec app bash

# nginxのバージョン確認
docker compose exec web nginx -v

# コンテナ内から離脱
exit