#!/usr/bin/env fish

# Set default editor to nano
set -Ux EDITOR nano

# Abbreviations
abbr --add bupc "brew update; and brew upgrade; and brew cleanup"

abbr --add dco "docker-compose"
abbr --add dcol "docker-compose logs -f --tail 100"
abbr --add dcod "docker-compose down"
abbr --add dcof "docker-compose down; and docker-compose up -d; and docker-compose logs -f --tail 100"

abbr --add gs "git status"
abbr --add gb "git branch"
abbr --add gc "git commit -v -m"
abbr --add ga "git add"
abbr --add gco "git checkout"
abbr --add gm "git checkout master"
abbr --add gd "git checkout develop"
