#!/bin/bash

# 运行 Docker 容器
sudo docker run -dit \
    -p 12345:12345 \
    -w /etc/app \
    --name autologin \
    --restart unless-stopped \
    python:3.12 \
    bash -c 'apt -y update && \
              apt -y install libnss3 libnspr4 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdrm2 libdbus-1-3 libxkbcommon0 libxcomposite1 libxdamage1 libxfixes3 libxrandr2 libgbm1 libasound2 libatspi2.0-0 libxshmfence1 libpango-1.0-0 libcairo2 && \
              pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
              python -m pip install --upgrade pip && \
              pip install pyppeteer Pillow asyncio aiohttp opencv-python-headless ddddocr quart && \
              wget https://proxy.07170501.xyz/proxy/https://raw.githubusercontent.com/randomshit699/Bncr_plugins/main/plugins/%E9%99%84%E4%BB%B6/%E8%B4%A6%E5%AF%86%E7%99%BB%E5%BD%95/api.py -O api.py && \
              wget https://proxy.07170501.xyz/proxy/https://raw.githubusercontent.com/randomshit699/Bncr_plugins/main/plugins/%E9%99%84%E4%BB%B6/%E8%B4%A6%E5%AF%86%E7%99%BB%E5%BD%95/login.py -O login.py && \
              python api.py'
