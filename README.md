# Mac Setup

This is a set of instructions and scripts to quickly setup a new mac to my liking.

## Mac App Store

- Install macOS updates
- Install 1Password
- Install XCode

## Preferences

- Dock > Size > Small
- Dock > Minimise windows using > Scale effect
- Dock > Automatically hide and show the Dock
- Security and privacy > Password after > Immediately
- Security and privacy > Firewall > On
- Sharing > Computer name
- Sharing > Uncheck all
- Trackpad > Tap to click
- Trackpad > Secondary click > Bottom right corner
- Trackpad > Scroll direction
- Bluetooth > Show in menu bar
- Sound > Show in menu bar

## Install tools

Update and install command line tools:
```bash
./scripts/macos-prep.sh
```

Simply run:
```bash
./scripts/setup.sh
```

## Start apps on boot

Preferences > Users & Groups > Login Items

Add **iTerm** and **Spectacle**

## Configure git

```bash
git config --global user.name "hwaterke"
git config --global user.email "hwaterke@users.noreply.github.com"
git config --global core.editor nano
git config --global pull.rebase true
```

## Generate a new SSH key

```bash
ssh-keygen -t rsa -b 4096 -C "harold@mbp2018"
```

Add it to your Github account

## Install docker for mac

https://www.docker.com/docker-mac

## yarn global packages

Simply run: `./scripts/yarn.sh`

## Install WebStorm

- Add live templates back
