#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
pnpm docs:build

# 进入生成的文件夹
# cd src/.vuepress/dist

# 拷贝目录和文件
# cp -r ../../../.github ./

git init
git add ./
git commit -m "update"
git remote add origin https://github.com/ky-doc/demo.git
git branch -M main
git push -f origin main

# git init
# git add -A
# git commit -m 'deploy'

# # 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f https://github.com/ky-doc/demo.git main:gh-pages

# cd -