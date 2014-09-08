#!/bin/sh -e

git config user.email $(cat ~/.email)

git config core.excludesfile=~/.gitignore
git config init.templatedir=~/.git_template
git config push.default simple
git config user.name "Ge Wang"
