@ECHO OFF

SET HANDLE=%1
SET MRCDATA=C:\MYSTIC\DATA\MRC
SET BBSNAME=Unconfigured_BBS
SET BBSDISP=^|11U^|03nconfigured ^|11B^|03BS
SET BOTUSER=SysOp
SET ROOM=lobby

SET MRCANNOUNCE="%BOTUSER%~%BBSNAME%~%BBSROOM%~~~~|15* |13%HANDLE% |14has just logged into %BBSDISP%~\r\n"

ECHO %MRCANNOUNCE% > %MRCDATA%\mrcannounce.mrc
