#!/bin/sh -e

branch=$1
git checkout -b $branch --track
git push origin $branch
