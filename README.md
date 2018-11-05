# Setup up a new Mac

Inspired by [KrauseFx/new-mac](https://github.com/KrauseFx/new-mac).

The checkbox denotes whether it is done by `bootstrap`.

## Bootstrap

```shell
$ git clone --recursive https://github.com/crispgm/dotfiles.git
$ cd dotfiles
$ ./bootstrap
```

## Dev Setups

### Terminal & Shell

- [x] Install [Homebrew](https://brew.sh)
- [x] Install softwares and fonts from [Brewfile](https://github.com/crispgm/dotfiles/blob/master/Brewfile) with `brew bundle`
- [x] Install `zsh` and `oh-my-zsh`
- [x] Install [customized zarniwoop theme](https://github.com/crispgm/zarniwoop.vim) for vim
- [x] Setup `.bash_profile` `.zshrc` `.vimrc`
- [ ] Choose a theme of Terminal.app from [osx-terminal-themes](https://github.com/lysyi3m/osx-terminal-themes)

### Git

- [ ] User name `git config --global user.name "Your Name"`
- [ ] User email `git config --global user.email "yourmail@example.com"`
- [ ] Case sensitive `git config --global core.ignorecase false`

### Ruby

- [x] Setup `.gemrc`
- [x] Setup bundler's mirror: `bundle config mirror.https://rubygems.org https://gems.ruby-china.com` if you locate in China mainland

#### Shadowsocks

- [x] Import custom [user-rules](https://github.com/crispgm/dotfiles/tree/master/Apps/Shadowsocks)

### Sublime Text

- [x] Create `subl` in Terminal: `sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ~/Applications/subl`
- [ ] Migrate [.sublime-settings](https://github.com/crispgm/dotfiles/tree/master/Apps/Sublime)
- [ ] Install [PackageControl](https://packagecontrol.io/)
- [ ] Install `Monokai-Spacegrey` with `PackageControl`
- [ ] Install [Tomorrow theme](https://github.com/chriskempson/tomorrow-theme.git)  with `PackageControl`
- [ ] Install `syntax-highlighting-for-sass`, `vue-syntax-highlight` and `babel-sublime` with `PackageControl`

### VSCode

- [x] Create `code` in Terminal: `sudo ln -s /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code ~/Applications/code`

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

- [ ] Add blank seperator: `defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}`
