#!/bin/bash
cd ai_help
bash keygen.sh
rm -r key/file*
bash unifier.sh
cd ..
git add .
git commit -m "6"
git push origin develop

