# calypso-installation-china
中国Calypso安装、更新教程及问题解决方案

本文为ReadyAI中国提供的Calypso软件在中国的安装、更新教程及在安装更新中可能遇见问题的解决方案。若您发现有本文未解决的问题，请提交Issues或发送邮件到[ReadyAI中国技术支持专员邮箱](mailto:yongshun.ye@readyai.org)。

## 安装
原版安装脚本下载地址：https://cloud.wholerengroup.com/s/run-calypso-installer-china  
下载完成后，请以管理员运行此脚本进行安装。

原版安装脚本有在安装完毕后，无论成功与否会自动关闭，可能导致在安装失败时无法看到错误信息，因此你可以下载修改版安装脚本，它在安装结束后会显示“按任意键继续”，之后才会关闭。  
[修改版安装脚本下载](https://raw.githubusercontent.com/ShreckYe/calypso-installation-china/master/run-calypso-installer-china-with-pause.zip)
### 安装常见问题及解决方案
若脚本在安装过程中输出红字，说明有一些组件安装不成功，请对照以下问题及解决方案解决。
#### ADB
若在Kindle Fire平板连接上后，开启Calypso时出现“”，则说明Android的ADB没有正常启动，造成这种情况的原因一般是ADB的端口被其他应用程序占用了，这些应用程序一般是同样可以连接Android手机的手机管家类软件。

解决方案：关闭所有手机管家类软件（如360、腾讯、金山等手机管家），再重新启动Calypso；若还无法解决，则建议卸载电脑中的所有手机管家类软件。
#### Kindle驱动
若在安装时出现“”，或者在Kindle Fire平板连接上并开启USB调试后，Calyspo启动后显示未检测到连接的设备，则说明Kindle的驱动程序没有正确安装。

解决方案：下载Kindle驱动程序并安装。
[Kindle驱动原版下载地址]
[Kindle驱动本GitHub仓库下载地址]
#### 无法在应用商店中找到Cozmo
若在亚马逊应用商店（App Store）中无法找到Cozmo应用程序，则说明您的登陆的亚马逊账号为中国区的账号，中国区无法下载Cozmo应用程序。

解决方案：请按以下步骤解决此问题：
1. 注册一个亚马逊账号，在选择国家的时候选择美国（United States）；或联系ReadyAI，获取info@readyai.com登陆账号；
2. 重新登陆账号；
3. 清空应用商店（App Store）的所有数据（Clear data）；
4. 重新打开应用商店并搜索Cozmo。
## 更新

### 更新常见问题及解决方案
#### Mac系统下更新不成功
