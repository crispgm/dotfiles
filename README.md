# Setup up a new Mac

Inspired by [KrauseFx/new-mac](https://github.com/KrauseFx/new-mac).

## Shell

- [ ] `xcode-select --install`
- [ ] Install [Homebrew](https://brew.sh)
- [ ] Install softwares and fonts from [Brewfile](https://github.com/crispgm/dotfiles/blob/master/macOS/Brewfile) with `brew bundle`
- [ ] Choose a theme of Terminal.app from [osx-terminal-themes](https://github.com/lysyi3m/osx-terminal-themes)
- [ ] Login locally on GitHub
- [ ] Setup `.dotfiles`

## Git

- [ ] User name `git config user.name "Your Name"`
- [ ] User email `git config user.email "yourmail@example.com"`
- [ ] Case sensitive `git config core.ignorecase false`

## VIM

- [ ] Install [customized zarniwoop theme](https://github.com/crispgm/zarniwoop.vim)
- [ ] Install [Vundle](https://github.com/VundleVim/Vundle.vim)
- [ ] Vundle install `Valloric/YouCompleteMe`

## Ruby

- [ ] Setup `.gemrc`
- [ ] Setup bundler's mirror: `bundle config mirror.https://rubygems.org https://gems.ruby-china.com` if you locate in China mainland

## Shadowsocks

- [ ] Import custom [user-rules](https://github.com/crispgm/dotfiles/tree/master/Shadowsocks)

## Sublime Text

- [ ] Migrate [.sublime-settings](https://github.com/crispgm/dotfiles/tree/master/macOS/Apps/Sublime)
- [ ] Create `subl` in Terminal: `sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /Users/baidu/Applications/subl`
- [ ] Install [PackageControl](https://packagecontrol.io/)
- [ ] Install `Monokai-Spacegrey` with `PackageControl`
- [ ] Install [Tomorrow theme](https://github.com/chriskempson/tomorrow-theme.git)
- [ ] Install `syntax-highlighting-for-sass`, `vue-syntax-highlight` and `babel-sublime` with `PackageControl`

## Finder

- [ ] Show Path Bar
- [ ] Remove labels and clean up Sidebar

## Dock

- [ ] Add blank seperator: `defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}`

## Karabiner

- [ ] Setup `karabiner.json` if using HHKB
