@echo off
title MIUI终极去广告之免root卸载 msa By MIUI论坛-浅蓝的灯
color 2f
mode con lines=30 cols=68
cd /d %~dp0
ECHO. ==============================================================
ECHO  MIUI 在很多地方加了广告(比如软件启动时，比如作业帮)，有些是可以关闭的，但有些不能。
echo.
echo  关闭不了的广告大部分是msa推送的，因此我们把它删掉。
echo.
echo  注意：目前(2018.6.18)还没有删除以后卡米现象，不保证以后没有
ECHO.
ECHO. 首先我们需要重启adb服务
ECHO.
ECHO. 请退出手机助手类软件，然后按任意键继续
ECHO. ==============================================================
ECHO.
PAUSE>NUL
cls
ECHO. ====================================================
ECHO.
ECHO. 正在尝试重启ADB服务~
ECHO.
ECHO. ====================================================
ECHO.
echo.
adb kill-server
ping 127.0.0.1 /n 2 >nul
adb start-server
cls
ECHO.
ECHO  ==============================================================
ECHO.
echo  重启服务完毕，请确保下方设备列表中有你的设备。按任意键继续……
ECHO.
ECHO  ==============================================================
ECHO.
echo 设备列表：
adb devices
echo.
PAUSE >nul
cls
color 3f
echo.
echo.
echo ====================命令执行结果==================
echo.
adb shell pm uninstall --user 0 com.miui.systemAdSolution
echo.
echo ==================================================
echo.
echo.
echo 如果看见 Success 字样即为成功。
echo.
echo 然后尽情享受吧~（万能遥控效果明显）
echo.
echo 按下任意键退出
pause>nul
