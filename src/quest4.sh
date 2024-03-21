#!/bin/bash
kill $(pgrep -f ai_door_control.sh)
git add .
git commit -m "3"
git push origin develop
