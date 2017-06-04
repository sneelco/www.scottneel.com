#!/usr/bin/bash

hexo generate
hexo deploy

git add .
git commit -m 'blog post'
git push

