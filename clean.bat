@echo off
cd /d %0\..
call gradlew clean
del logcat.txt
del gradlew
del gradlew.bat
rmdir /S /Q .gradle
rmdir /S /Q gradle
