@echo off
::
::****************************************
::    Author      :    Vigo Tseng
::    Email       :    vigotseng@gmail.com
::
::    FileName    :    
::    Version     :    1.0.0
::    Date        :    
::  Descripthon   :    
::
::    Version     :
::    Date        :
::  Descripthon   :
::
::****************************************

set y=%date:~0,4%
set m=%date:~5,2%
set d=%date:~8,2%
set w=%date:~12,1%
set string=%y%%m%%d%_

echo Windows Registry Editor Version 5.00 >> newfolder.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\NamingTemplates] >> newfolder.reg
echo "RenameNameTemplate"="%string%" >> newfolder.reg

regedit /s newfolder.reg
