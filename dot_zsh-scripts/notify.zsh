#!/usr/bin/env zsh

# 使用 crontab 定时提醒喝水: 仅 8:00-23:00 点执行
function drink_water_notify() {
  Hour=$(date +%H)
  if [ "$Hour" -ge 8 ] && [ "$Hour" -lt 23 ]; then
    osascript -e 'display dialog "到时间该喝水了" buttons {"OK"} default button "OK"'
  fi
}

drink_water_notify
