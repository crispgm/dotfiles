# dotfiles

![GitHub CI](https://github.com/crispgm/dotfiles/workflows/build/badge.svg)
![](https://img.shields.io/badge/.-dotfiles-green.svg)
![](https://img.shields.io/badge/OS-macOS-1793D1.svg)
![](https://img.shields.io/badge/License-MIT-5E81AC.svg)

![](screenshot.jpg)

This is a dotfiles project which may be used to provision a new macOS with cosy dev setups. And it is tested with GitHub Actions CI. The checkbox denotes whether it is done by `bootstrap`.

Inspired by [KrauseFx/new-mac](https://github.com/KrauseFx/new-mac).

For Arch Linux, please refer to [crispgm/arch-linux-dotfiles](https://github.com/crispgm/arch-linux-dotfiles).

## Bootstrap

```shell
$ xcode-select --install # or download here <https://developer.apple.com/download/more/>
$ git clone --recursive https://github.com/crispgm/dotfiles.git
# Login to AppStore with Apple ID, since there are MAS apps in Brewfile
$ cd dotfiles
$ ./bootstrap
```

## Dev Setups

### Terminal & Shell

- [x] Setup Hostname `sudo scutil --set HostName david-macbook`
- [x] Install [Homebrew](https://brew.sh)
- [x] Install softwares and fonts from [Brewfile](https://github.com/crispgm/dotfiles/blob/master/Brewfile) with `brew bundle`. HINT: Login to AppStore at first. Some of the applications from Mac App Store may need purchase.
- [ ] Install [nord theme](https://github.com/arcticicestudio/nord-iterm2) for iTerm2
- [x] Install `zsh` and `oh-my-zsh`
- [x] Setup `.bash_profile` `.bashrc` `.zshrc`
- [x] Setup NeoVim

### Git

- [x] Git global config
- [x] Git work config

### Ruby

- [x] Setup `.gemrc`
- [x] Setup bundler's mirror: `bundle config mirror.https://rubygems.org https://gems.ruby-china.com` if you locate in China mainland

#### Shadowsocks

- [x] Import custom [user-rules](https://github.com/crispgm/dotfiles/tree/master/Shadowsocks)

### Sublime Text

- [x] Create `subl` in Terminal: `sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ~/Applications/subl`
- [x] Migrate [.sublime-settings](https://github.com/crispgm/dotfiles/tree/master/Sublime)
- [ ] Install [PackageControl](https://packagecontrol.io/)
- [ ] `PackageControl`: Install `Nord`, `syntax-highlighting-for-sass`, and `SublimeLinter`

### VSCode

- [x] Create `code` in Terminal: `sudo ln -s /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code ~/Applications/code`
- [x] Install `Setting Sync` extensions and then sync settings

### Karabiner

- [x] Install `karabiner-elements`
- [ ] Setup `karabiner.json` if using HHKB

### File Sync

- [x] Install your favorite file sync service (e.g. Dropbox, Google Drive, One Drive ... I prefer Dropbox because it works with Alfred)
- [ ] Setup syncing folder for apps (e.g. Alfred, Dash ...)

## macOS Setups

### Trackpad

- [ ] Tap to click
- [ ] Seconary click: Click in bottom right corner

### Time

- [ ] Set time zone automatically using current location
- [ ] Use a 24-hour clock and show date

### Finder

- [ ] New Finder show Desktop
- [ ] Remove labels and clean up Sidebar

### Dock

- [ ] Change to the size you like
- [ ] Cancel: Show recent application in Dock
- [ ] Downloads: View content as Grid
- [ ] Add blank seperator: `defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}`

### Siri

- [ ] Disable Siri system wide and remove Siri button from Touch Bar

## Related Blog

[我是如何初始化 Mac 环境的](https://crispgm.com/page/provisioning-a-new-mac.html)
