# 機能
特定の拡張子のファイルをアップロードを検出すると、ファイルの内容を画像化し、スレッドで返信するDiscord BOTです。
このリポジトリは[ご本家様 @Huyu2239](https://qiita.com/Huyu2239/items/edaf0d0851f990e18085)のコードを元に、docker composeで動作するように改変したものです。
## 対応拡張子
- `.pdf`
- `.xls`
- `.xlsx`
- `.doc`
- `.docs`
- `.ppt`
# 使用方法
## 必要環境
- docker, docker-composeコマンドが実行できる環境

## インストール
0. DiscordのBotを作成し、トークンを取得する。
1. `token_install.sh`を実行し、取得したトークンを入力する。Windows環境の場合は`.env`を作成し、`DISCORD_TOKEN=[INPUT_YOUR_TOKEN_HERE]`のような内容で取得したトークンを記述する。
2. `docker compose up -d`を実行する。
3. お好きなサーバーにBOTを招待する。

## その他
### Discord BOTの必要権限
- Read Message History
- Send Messages
- Create Public Threads
- Send Messages in Threads
- Attach Files
