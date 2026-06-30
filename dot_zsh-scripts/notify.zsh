#!/usr/bin/env zsh

# 使用 crontab 定时提醒喝水
osascript -e 'display dialog "到时间该喝水了" buttons {"OK"} default button "OK"'
