# Mac Setup

This is a set of instructions and scripts to quickly setup a new mac to my liking.

## Mac App Store

- Install macOS updates
- Install XCode
- Install [homebrew](https://brew.sh)
- `brew bundle` the `Brewfile`

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

## Zsh

```bash
# Setup brew zsh as default
sudo nano /etc/shells
# Add /usr/local/bin/zsh
chsh -s /usr/local/bin/zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Custom plugins (reload shell first)
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Copy
cp zsh/zshrc ./.zshrc
cp zsh/custom/*.zsh $ZSH_CUSTOM/
```

## iTerm

Go to `Preferences > Keys > Hotkey` and click on `Create a Dedicated Hotkey Window...`
Set the profile as default, remove transparency and blur.

Set Rows to 45 or more depending on the screen size.

In `Apparance > General`, select `Exclude from Dock and ...`

## Start apps on boot

Preferences > Users & Groups > Login Items

Add **iTerm**

## Configure git

```bash
git config --global user.name "hwaterke"
git config --global user.email "hwaterke@users.noreply.github.com"
git config --global core.editor nano
git config --global pull.rebase true
```

## Generate a new SSH key

```bash
ssh-keygen -t rsa -b 4096 -C "harold@mbp2023"
```

Add it to your Github account

## asdf

```bash
# Dependencies for the node plugin
brew install gpg gawk

asdf plugin add nodejs
asdf install nodejs latest
asdf global nodejs latest

asdf plugin add yarn
asdf install yarn latest
asdf global yarn latest

asdf plugin add ruby
asdf install ruby latest
asdf global ruby latest
```
