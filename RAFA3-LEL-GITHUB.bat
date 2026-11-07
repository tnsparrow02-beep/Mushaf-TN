@echo off
chcp 65001 >nul
title Rafa3 el Mushaf lel GitHub
echo.
echo ===== Rafa3 el projet lel GitHub =====
echo.
where git >nul 2>nul
if errorlevel 1 goto nogit
echo 1. Fi github.com 5toui New repository, khalih fargh (bla README) w a3mel copy lel lien HTTPS.
echo    Misal: https://github.com/esmek/mushaf.git
echo.
set /p URL=Wattih el lien houni w e3mel Enter: 
if "%URL%"=="" goto nourl
echo.
echo Bech narfa3 el fichiers lel branche main. Ken el repo fih fichiers 9dom, yetbaddlou.
set /p OK=Ekteb O w e3mel Enter bech nkamel: 
if /i not "%OK%"=="O" exit /b 0
if not exist .git git init
git config user.name >nul 2>nul || git config user.name "Mushaf Builder"
git config user.email >nul 2>nul || git config user.email "builder@example.com"
git checkout -B main
git add -A
git commit -m "Mushaf v3.1"
git remote remove origin >nul 2>nul
git remote add origin "%URL%"
git push -u origin main --force
if errorlevel 1 goto fail
echo.
echo Tamma! Tawa 5toui tab Actions fel repo: el APK yetbena wa7dou (5-10 d9ayek).
echo Ba3d, fel run el akhdhar nazzel el artifact mushaf-apk.
pause
exit /b 0
:nogit
echo Git mouch mthabbat. Nazzlou men https://git-scm.com/download/win w a3ed 5adhmet el fichier.
pause
exit /b 1
:nourl
echo Ma kteb tech el lien.
pause
exit /b 1
:fail
echo.
echo El push fachel. Thabbat men el lien w men login mta3 GitHub, w a3ed.
pause
exit /b 1
