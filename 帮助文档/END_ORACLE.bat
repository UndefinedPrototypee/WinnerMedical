@Echo Off
Title ORACLE���񿪹���
:Menu
COLOR 0F
CLS
Set Choice=N

If "%Choice%"=="" Goto Menu
If Not "%Choice%"=="" Set Choice=%Choice:~0,1%

If /I "%Choice%"=="N" Goto NO

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