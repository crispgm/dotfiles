# Setup up a new Mac

![](https://img.shields.io/badge/.-dotfiles-green.svg)
![](https://img.shields.io/badge/OS-macOS-1793D1.svg)
![](https://img.shields.io/badge/License-MIT-5E81AC.svg)

Inspired by [KrauseFx/new-mac](https://github.com/KrauseFx/new-mac).

The checkbox denotes whether it is done by `bootstrap`.

关于：[我是如何初始化 Mac 环境的](https://crispgm.com/page/provisioning-a-new-mac.html)

## Bootstrap

```shell
$ xcode-select --install # or download here <https://developer.apple.com/download/more/>
$ git clone --recursive https://github.com/crispgm/dotfiles.git
$ cd dotfiles
$ ./bootstrap
```

## Dev Setups

### Terminal & Shell

- [x] Setup Hostname `sudo scutil --set HostName david-macbook`
- [x] Install [Homebrew](https://brew.sh)
- [x] Install softwares and fonts from [Brewfile](https://github.com/crispgm/dotfiles/blob/master/Brewfile) with `brew bundle`. HINT: some applications from Mac App Store need purchase.
- [ ] Choose a theme of `Terminal.app` from [osx-terminal-themes](https://github.com/lysyi3m/osx-terminal-themes)
- [x] Install `zsh` and `oh-my-zsh`
- [x] Install [customized zarniwoop theme](https://github.com/crispgm/zarniwoop.vim) for vim
- [x] Setup `.bash_profile` `.zshrc` `.vimrc`

### Git

- [x] User name `git config --global user.name "Your Name"`
- [x] User email `git config --global user.email "yourmail@example.com"`
- [x] Case sensitive `git config --global core.ignorecase false`

### Ruby

- [x] Setup `.gemrc`
- [x] Setup bundler's mirror: `bundle config mirror.https://rubygems.org https://gems.ruby-china.com` if you locate in China mainland

#### Shadowsocks

- [x] Import custom [user-rules](https://github.com/crispgm/dotfiles/tree/master/Shadowsocks)

### Sublime Text

- [x] Create `subl` in Terminal: `sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ~/Applications/subl`
- [ ] Migrate [.sublime-settings](https://github.com/crispgm/dotfiles/tree/master/Sublime)
- [ ] Install [PackageControl](https://packagecontrol.io/)
- [ ] `PackageControl`: Install `Monokai - Spacegrey`
- [ ] `PackageControl`: Install `[Tomorrow Color Schemes](https://github.com/chriskempson/tomorrow-theme.git)`
- [ ] `PackageControl`: Install `syntax-highlighting-for-sass`, `vue-syntax-highlight`, and `babel-sublime`

### VSCode

- [x] Create `code` in Terminal: `sudo ln -s /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code ~/Applications/code`
- [x] Install extensions

### Karabiner

- [x] Install `karabiner-elements`
- [ ] Setup `karabiner.json` if using HHKB

### Nutstore

- [ ] Sync to `~/sync/Nutstore`
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
