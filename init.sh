#!/bin/bash

mv tpl ~/
echo "clone maccms10"
cd /var/www/
git clone https://github.com/magicblack/maccms10.git

echo "config maccms10"
cd /var/www/maccms10
rm -rf .git
chmod -R 777 application/data/*
chmod -R 777 application/extra
chmod 777 application/database.php
chmod 777 application/route.php
chmod -R 777 static/js
chmod -R 777 static/player
chmod -R 777 runtime
chmod -R 777 upload

# 删除默认模板, 替换为当前模板
rm -rf template/default && mv ~/tpl template/default
