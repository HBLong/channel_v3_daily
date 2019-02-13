# channel_v3_daily

## 解决国内 https://packagecontrol.io 无法访问的问题

### 尽可能保证每天更新
目前买了台服务器每6个小时拉取一次最新的文件

### sublimeText 报错
Package Control
There are no packages available for installation
Please see https://packagecontrol.io/docs/troubleshooting for help

### channel_v3.json (本地使用)
1. 下载 channel_v3.json 到本地 /path/xxx/channel_v3.json
2. 点击 Preferences > Package Settings > Package Control > Settings - User
3. 添加 `"channels": ["/path/xxx/channel_v3.json"],`

### channel_v3.json
1. 点击 Preferences > Package Settings > Package Control > Settings - User
2. 添加 `"channels": ["https://raw.githubusercontent.com/HBLong/channel_v3_daily/master/channel_v3.json"],`