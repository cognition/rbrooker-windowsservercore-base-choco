# Getting Chocolatey installed in
# windowsservercore
FROM  microsoft/windowsservercore


MAINTAINER Ramon Brooker <ramon.brooker@imaginecommunications.com>


RUN @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
RUN @powershell choco install NuGet.Commandline -y

CMD @powershell
