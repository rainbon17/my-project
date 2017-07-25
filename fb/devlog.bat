REM @echo off
set DATESTAMP=%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%
set TIMESTAMP=%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%
set DATEANDTIME=%DATESTAMP%%TIMESTAMP%
set _logPath=D:/devlog_%1_%DATEANDTIME%.cs
set _svnUrl=svn://10.36.4.133/AgbsSeam2/trunk
REM cd c:/9_workspace/AgbsSeam2_trunk/AgbsSeam2_trunk
REM
if not %1 ==""  svn log -r%1 -v %_svnUrl% >> %_logPath%
cd /
pause 