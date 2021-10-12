# docker-laravel

docker で laravel 環境を作っています。

### 環境構築

`sh startBuiltEnvironment.sh` で自動で環境構築ができます。
環境構築が終わり次第、このファイルは消去して問題ありません。

### dokcer などバージョン確認

`sh confirm.sh` で確認できます。

### docker の実行&ビルド

`sh startDevelopment.sh` で実行できます。

### docker の app コンテナ内部に入りたいとき

`sh enterAppContainer.sh` で内部に入ることができます。
`exit`で出ることができます。

### 構築した環境を dokcer から消したい場合

`sh deleteDocker.sh`で消去できます。
再度構築したい場合は`sh startDevelopment.sh`で作成できます。

### docker を停止したいとき

`sh finishDocker.sh` で停止することができます。

# 参考リンク

https://qiita.com/ucan-lab/items/56c9dc3cf2e6762672f4
