# dotfiles

![](https://img.shields.io/badge/.-dotfiles-green.svg)
![](https://img.shields.io/badge/OS-macOS-1793D1.svg)
![](https://img.shields.io/badge/License-MIT-5E81AC.svg)

Provision a new Mac and dotfiles. Inspired by [KrauseFx/new-mac](https://github.com/KrauseFx/new-mac). The checkbox denotes whether it is done by `bootstrap`.

For Arch Linux, please see <https://github.com/crispgm/arch-linux-dotfiles>.

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
- [ ] `PackageControl`: Install `Monokai - Spacegrey`, `syntax-highlighting-for-sass`, and `SublimeLinter`

### VSCode

- [x] Create `code` in Terminal: `sudo ln -s /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code ~/Applications/code`
- [x] Install `Setting Sync` extensions and then sync settings

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

## Related Blog

[我是如何初始化 Mac 环境的](https://crispgm.com/page/provisioning-a-new-mac.html)
