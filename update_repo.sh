#!/bin/bash

NOTE=$1

git add .
git commit -m $NOTE
git push origin master
