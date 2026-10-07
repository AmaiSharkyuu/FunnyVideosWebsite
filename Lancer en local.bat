@echo off
rem Ouvre le site en local : le navigateur refuse de lire videos.json si on ouvre index.html directement.
cd /d "%~dp0"
start "" http://localhost:8642/
python -m http.server 8642
