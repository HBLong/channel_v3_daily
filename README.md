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


### 如何安装 Package Control(离线安装)
1. 点击st3里面的菜单 “Preferences > Browse Packages” 或者  “首选项 > 浏览插件目录”
2. 此时你所在的目录是 “Sublime Text 3/Packages”，进入到 “Sublime Text 3/Installed Packages”
3. 下载 [Package Control插件包](https://github.com/HBLong/channel_v3_daily/raw/master/Package%20Control.sublime-package)，将该插件包复制到 "Installed Packages/" 目录内
4. 重启 Sublime Text

### 安装 Package Control(在线安装)
1. 通过快捷键 `ctrl+`` ` 或者菜单 `View > Show Console` 或者菜单 `视图 > 显示/隐藏控制台` 进入控制台，复制下面的代码到控制台运行
2. Sublime Text 3 

    `import urllib.request,os,hashlib; h = '6f4c264a24d933ce70df5dedcf1dcaee' + 'ebe013ee18cced0ef93d5f746d80ef60'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)`

3. Sublime Text 2

    `import urllib2,os,hashlib; h = '6f4c264a24d933ce70df5dedcf1dcaee' + 'ebe013ee18cced0ef93d5f746d80ef60'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); os.makedirs( ipp ) if not os.path.exists(ipp) else None; urllib2.install_opener( urllib2.build_opener( urllib2.ProxyHandler()) ); by = urllib2.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); open( os.path.join( ipp, pf), 'wb' ).write(by) if dh == h else None; print('Error validating download (got %s instead of %s), please try manual install' % (dh, h) if dh != h else 'Please restart Sublime Text to finish installation')`
