#!/bin/sh

git checkout trunk
git hg pull trunk
git checkout common
git merge trunk

git checkout cataclysm
git merge common

git checkout divers
git merge common

git checkout master
git merge common
git merge cataclysm
git merge divers