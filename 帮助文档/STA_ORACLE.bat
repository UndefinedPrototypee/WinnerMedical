@Echo Off
Title ORACLE服务开关器
:Menu
COLOR 0F
CLS
Set Choice= Y
//Set /P Choice=开启服务请按 " Y "  关闭服务请按 " N "，然后按回车：
If "%Choice%"=="" Goto Menu
If Not "%Choice%"=="" Set Choice=%Choice:~0,1%
If /I "%Choice%"=="Y" Goto YES
//If /I "%Choice%"=="N" Goto NO

:YES
COLOR 1F
Title 开启服务中...
CLS
Echo.
Echo 正在开启服务，请稍后...
Echo.
net start oracleserviceoracle
lsnrctl start
Echo   请按任意键退出程序！
PAUSE>NUL
EXIT

/*
:NO
COLOR 2F
Title 关闭服务中...
CLS
Echo.
Echo 正在关闭服务，请稍后...
Echo.
net stop oracleserviceoracle
lsnrctl stop
Echo   请按任意键退出程序！
PAUSE>NUL
EXIT
*/