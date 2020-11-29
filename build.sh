#!/usr/bin/env bash

pip3 install -r requirements.txt

cd cookiecutter

cp cookiecutter/__main__.py cookiecutter/cookiecutter.py

pyinstaller cookiecutter/cookiecutter.py \
    --hidden-import="binaryornot" \
    --hidden-import="Jinja2" \
    --hidden-import="click" \
    --hidden-import="poyo" \
    --hidden-import="jinja2_time" \
    --hidden-import="python_slugify" \
    --hidden-import="requests" \
    --hidden-import="MarkupSafe" \
    --hidden-import="cookiecutter.config" \
    --hidden-import="cookiecutter.cli" \
    --hidden-import="cookiecutter.environment" \
    --hidden-import="cookiecutter.exceptions" \
    --hidden-import="cookiecutter.extensions" \
    --hidden-import="cookiecutter.find" \
    --hidden-import="cookiecutter.generate" \
    --hidden-import="cookiecutter.hooks" \
    --hidden-import="cookiecutter.log" \
    --hidden-import="cookiecutter.main" \
    --hidden-import="cookiecutter.prompt" \
    --hidden-import="cookiecutter.replay" \
    --hidden-import="cookiecutter.repository" \
    --hidden-import="cookiecutter.utils" \
    --hidden-import="cookiecutter.vcs" \
    --hidden-import="cookiecutter.zipfile" \
    --onefile

./dist/cookiecutter --version
