@echo Off
:START
CLS
echo *=========================================================================*
echo *                                                                         *
echo *                            [A]����Ҽ��˵�                              *
echo *                            [D]ɾ���Ҽ��˵�                              *
echo *                            [Q]�˳�                                      *
echo *                                                                         *
echo *=========================================================================*
Set /P Choice=����������������ѡ��Ҫ���еĲ��� (A/D/Q) ��Ȼ�󰴻س���
If /I "%Choice%"=="A" Goto :ADD
If /I "%Choice%"=="D" Goto :DEL
If /I "%Choice%"=="Q" Exit
 
START
 
:ADD
CLS
echo Windows Registry Editor Version 5.00> tmp.reg 
echo [HKEY_CLASSES_ROOT\*\shell]>> tmp.reg 
echo [HKEY_CLASSES_ROOT\*\shell\SublimeText]>> tmp.reg 
echo @="SublimeText">> tmp.reg 
echo [HKEY_CLASSES_ROOT\*\shell\SublimeText\Command]>> tmp.reg 
set str=%cd%
echo @="%str:\=\\%\\sublime_text.exe \"%%1^\"">> tmp.reg 
echo *=========================================================================*
echo *                                                                         *
echo *   ���ڽ����ɵ�ע����Ϣд��ע����������ǡ���ť��                      *
echo *                                                                         *
echo *=========================================================================*
tmp.reg
del tmp.reg
GOTO :START
 
:DEL
echo Windows Registry Editor Version 5.00> tmp.reg 
echo [-HKEY_CLASSES_ROOT\*\shell\SublimeText]>> tmp.reg 
tmp.reg
del tmp.reg
GOTO :START