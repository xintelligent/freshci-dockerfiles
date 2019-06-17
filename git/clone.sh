#!/bin/bash
echo start clone!

git init
git remote add origin https://$ACCESS_TOKEN:x-oauth-basic@github.com/$REPO.git
git fetch origin
