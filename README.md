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

## iTerm

Go to `Preferences > Keys > Hotkey` and click on `Create a Dedicated Hotkey Window...`
Set the profile as default, remove transparency and blur.

Set Rows to 45 or more depending on the screen size.

In `Apparance > General`, select `Exclude from Dock and ...`

## Zsh

```bash
brew install zsh
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Custom plugins (relead shell first)
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# Apply config
cp zsh/zshrc ./.zshrc
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
