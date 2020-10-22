@echo off
echo "<<< Setting QT5 Env Vars>>>"

set PATH=C:\Program Files\Eclipse Cyclone DDS\bin;%PATH%
set QTDIR=C:\qt5.7.1
set QT_PLUGIN_PATH=%QTDIR%\plugins
set PATH=%QTDIR%\bin;%PATH%

