#!/usr/bin/bash

scrot -s ~/temp.png && xclip -selection clipboard -t image/png -i ~/temp.png && rm ~/temp.png
