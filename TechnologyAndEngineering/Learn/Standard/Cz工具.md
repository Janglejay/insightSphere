
---
tags: standard, git
---

# Cz安装

##### 一.安装

1.安装利器 `commitizen`

```
npm install -g commitizen
```

2.安装规范模板文件

```
npm install -g cz-conventional-changelog
```

##### 二.使用如下命令创建`.czrc` 文件 【目的：写入配置】

```
echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc
```

##### 三.注意：

文件最前面带上.就会变成隐藏文件，系统默认不显示隐藏文件，所以你必须开启显示隐藏文件才能把文件命名为隐藏文件。

###### 显示隐藏文件：

```
打开『终端』这个程序，输入以下:

defaults write com.apple.finder AppleShowAllFiles -boolean true ; killall Finder

回车执行。
```

###### 隐藏隐藏文件：

```
打开『终端』这个程序，输入以下:

defaults write com.apple.finder AppleShowAllFiles FALSE ; killall Finder

回车执行。
```

##### 四.自定义配置实现

-   在 $HOME【即~】文件夹下创建cz-config.js 文件
-   官方提供了一份配置信息，可以去这个地址查看：[https://github.com/leoforfree/cz-customizable/blob/master/cz-config-EXAMPLE.js](https://icode.best/go?go=aHR0cHM6Ly9naXRodWIuY29tL2xlb2ZvcmZyZWUvY3otY3VzdG9taXphYmxlL2Jsb2IvbWFzdGVyL2N6LWNvbmZpZy1FWEFNUExFLmpz)

##### 五.使用

```
git cz  或者直接 cz
```

注意：存在如下提示，是由于本地没有`git add` 文件  
![在这里插入图片描述](https://img-bc.icode.best/20201113104926100.png)  
官方项目地址 ：[https://github.com/commitizen/cz-cli](https://icode.best/go?go=aHR0cHM6Ly9naXRodWIuY29tL2NvbW1pdGl6ZW4vY3otY2xp)