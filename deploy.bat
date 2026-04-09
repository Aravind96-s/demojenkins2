@echo off
:: 1. Define the Home path for the SYSTEM user so PM2 works correctly
set PM2_HOME=C:\.pm2
set HOMEDRIVE=C:
set HOMEPATH=\Users\Public

:: 2. Set the path for Node and PM2
set PATH=%PATH%;%AppData%\npm;C:\Program Files\nodejs

:: 3. Run the deployment
echo Restarting App...
call pm2 delete backend-app || echo "First run"
call pm2 start backend/app.js --name "backend-app" --watch
call pm2 save