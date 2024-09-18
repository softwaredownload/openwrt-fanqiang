#!/bin/sh

git add -A
git commit -m "Since version V0.2.34 rename overtls.exe to overtls-bin.exe"
git push origin master

sleep 10
# Use git from Msys2