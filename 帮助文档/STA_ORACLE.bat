@Echo Off
Title ORACLE���񿪹���
:Menu
COLOR 0F
CLS
Set Choice= Y
//Set /P Choice=���������밴 " Y "  �رշ����밴 " N "��Ȼ�󰴻س���
If "%Choice%"=="" Goto Menu
If Not "%Choice%"=="" Set Choice=%Choice:~0,1%
If /I "%Choice%"=="Y" Goto YES
//If /I "%Choice%"=="N" Goto NO

:YES
COLOR 1F
Title ����������...
CLS
Echo.
Echo ���ڿ����������Ժ�...
Echo.
net start oracleserviceoracle
lsnrctl start
Echo   �밴������˳�����
PAUSE>NUL
EXIT

/*
:NO
COLOR 2F
Title �رշ�����...
CLS
Echo.
Echo ���ڹرշ������Ժ�...
Echo.
net stop oracleserviceoracle
lsnrctl stop
Echo   �밴������˳�����
PAUSE>NUL
EXIT
*/