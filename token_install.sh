#/bin/bash

# ユーザに「DISCORD BOT TOKENを入力してください」とメッセージを出し、入力を求める
echo "DISCORD BOT TOKENを入力してください"
read token
# TOKENは.env内に、DISCORD_BOT_TOKENの変数名で、docker-composeで利用できるように保存しておく
echo "DISCORD_BOT_TOKEN=$token" > .env