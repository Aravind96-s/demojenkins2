@echo off

:: Ensure Node.js and npm global packages (PM2) are in PATH
set PATH=%PATH%;%AppData%\npm;C:\Program Files\nodejs

echo ==============================
echo Stopping old app (if running)...
echo ==============================
call pm2 delete backend-app || echo No existing app to delete

echo ==============================
echo Moving to project directory...
echo ==============================
cd /d C:\ProgramData\Jenkins\.jenkins\workspace\demo

echo ==============================
echo Starting new app with PM2...
echo ==============================
call pm2 start backend\app.js --name backend-app

echo ==============================
echo Saving PM2 process...
echo ==============================
call pm2 save

echo ==============================
echo Deployment completed!
echo ==============================