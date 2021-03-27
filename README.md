# dotfiles

<p align="center">
  <img src="screenshots/v2-nvim-and-tmux.png" width="600" />
</p>

<p align="center">
  <img src="https://github.com/crispgm/dotfiles/workflows/build/badge.svg" alt="GitHub CI" />
  <img src="https://img.shields.io/badge/platform-macOS-lightgray.svg" alt="platform" />
</p>

## Introduction

This is a dotfiles project which may be used to provision a new macOS with cosy dev setups. And it is tested with GitHub Actions CI. The checkbox denotes whether it is done by `bootstrap`. More screenshots [here](screenshots).

Inspired by [KrauseFx/new-mac](https://github.com/KrauseFx/new-mac).

For Arch Linux, please refer to [crispgm/arch-linux-dotfiles](https://github.com/crispgm/arch-linux-dotfiles).

## Bootstrap

```shell
$ xcode-select --install # or download here <https://developer.apple.com/download/more/>
$ git clone --recursive https://github.com/crispgm/dotfiles.git
# Login to AppStore with Apple ID, since there are MAS apps in Brewfile
$ cd dotfiles
$ ./bootstrap
# Application initialize
$ ./apps
```

## Dev Setups

### Terminal & Shell

- [x] Install [Homebrew](https://brew.sh)
- [x] Setup Hostname `sudo scutil --set HostName david-macbook`
- [x] Install softwares and fonts from [Brewfile](https://github.com/crispgm/dotfiles/blob/master/Brewfile) with `brew bundle`. HINT: Login to AppStore at first. Some of the applications from Mac App Store may need purchase.
- [x] Install `zsh`, `oh-my-zsh` and setup `.zshrc`
- [x] Setup Alacritty
- [x] Setup tmux
- [x] Setup NeoVim

### Git

- [x] Git global config
- [x] Git work config

### Ruby

- [x] Setup `.gemrc`
- [x] Setup bundler's mirror: `bundle config mirror.https://rubygems.org https://gems.ruby-china.com` if you locate in China mainland

### VSCode

- [x] Create `code` SymLink: `sudo ln -s /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code ~/Applications/code`
- [x] Install `Setting Sync` extensions and then sync settings

### File Sync

- [x] Install your favorite file sync service (e.g. Dropbox, Google Drive, One Drive ... I prefer Dropbox because it works with Alfred)
- [ ] Setup syncing folder for apps (e.g. Alfred, Dash ...)

### Karabiner

- [x] Setup `karabiner.json`

## macOS Setups

### Trackpad

- [ ] Tap to click
- [ ] Seconary click: Click in bottom right corner

### Control Center

#### Battery

- [ ] Show Battery in Control Center
- [ ] Show percentage

#### Time

- [ ] Set time zone automatically using current location
- [ ] Use a 24-hour clock and show date

#### Siri

- [ ] Disable Siri system wide and remove Siri button from Touch Bar

### Finder

- [ ] New Finder show Desktop
- [ ] Remove labels and clean up Sidebar

### Dock

- [ ] Change to the size you like
- [ ] Cancel: Show recent application in Dock
- [ ] Downloads: View content as Grid
- [ ] Add blank seperator: `defaults write com.apple.dock persistent-apps -array-add '{tile-type="spacer-tile";}'`

## Optional Setups

### bash

- [x] Setup shell login promtp with `motd`: ASCII art is generated with <http://patorjk.com/software/taag/>
- [x] Setup `.bash_profile` `.bashrc`

### Shadowsocks

- [x] Import custom [user-rules](https://github.com/crispgm/dotfiles/tree/master/Shadowsocks)

## Related Blog

[我是如何初始化 Mac 环境的](https://crispgm.com/page/provisioning-a-new-mac.html)
