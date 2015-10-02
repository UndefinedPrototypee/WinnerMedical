@Echo Off
Title ORACLE服务开关器
:Menu
COLOR 0F
CLS
Set Choice=N

If "%Choice%"=="" Goto Menu
If Not "%Choice%"=="" Set Choice=%Choice:~0,1%

If /I "%Choice%"=="N" Goto NO

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