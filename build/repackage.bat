cd ..
copy build\resource.xml
copy ..\command.ps1 ..\commmand.bat
del aem-component.cpt
.\bin\7zip\7z.exe a  aem-component.cpt -tzip command.bat resource.xml
del resource.xml
del ..\command.bat