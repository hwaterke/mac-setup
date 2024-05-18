# Mac Setup

This is a set of instructions and scripts to quickly setup a new mac to my liking.

## Mac App Store

- Install macOS updates
- Install XCode
- Install [homebrew](https://brew.sh)
- `brew bundle` the `Brewfile`

## Preferences

- Desktop & Dock > Size > Small
- Desktop & Dock > Magnification > Off
- Desktop & Dock > Position on screen > Left
- Desktop & Dock > Minimise windows using > Scale effect
- Desktop & Dock > Automatically hide and show the Dock
- Desktop & Dock > Desktop & Stage Manager > Show Items > Uncheck On Desktop
- Lock Screen > Require password ... > Immediately
- Network > Firewall > On
- General > About > Change computer name
- General > Sharing > Local hostname
- General > Sharing > Uncheck all
- Trackpad > Tap to click
- Trackpad > Secondary click > Bottom right corner
- Trackpad > Scroll direction > Disable Natural scrolling
- Control Centre > Bluetooth > Show in menu bar
- Control Centre > Sound > Always show in menu bar
- Keyboard > Keyboard shortcuts > Input Sources > Uncheck

# Rectangle settings

- Launch on login
- Check for updates automatically

## Zsh

```bash
# Setup brew zsh as default
sudo nano /etc/shells
# Add /opt/homebrew/bin/zsh
chsh -s /opt/homebrew/bin/zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Custom plugins (reload shell first)
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install dotfiles
chezmoi init --apply hwaterke
```

## iTerm

Go to `Preferences > Keys > Hotkey` and click on `Create a Dedicated Hotkey Window...`
Set the profile as default, remove transparency and blur.

Set Rows to 45 or more depending on the screen size.

In `Appearance > General`, select `Exclude from Dock and ...`

## Start apps on boot

Preferences > General > Login Items

Add **iTerm**

## Configure git

```bash
git config --global user.name "hwaterke"
git config --global user.email "hwaterke@users.noreply.github.com"
git config --global core.editor nano
git config --global pull.rebase true
git config --global rerere.enabled true
```

## Generate a new SSH key

- Use 1Password to generate an SSH Key for the computer.
- Setup the 1Password SSH Agent.
- Add the public key to your Github account.

## asdf

```bash
# Dependencies for the node plugin
brew install gpg gawk

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest
asdf global nodejs latest

asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install ruby latest
asdf global ruby latest

asdf plugin add terraform
asdf install terraform latest
asdf global terraform latest
```

## WebStorm

- Disable tabs