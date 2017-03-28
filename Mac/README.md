# Setup up a new Mac

Inspired by [KrauseFx/new-mac](https://github.com/KrauseFx/new-mac).

## Setup Shell

- [ ] Install [Homebrew](https://brew.sh)
- [ ] Install [Brewfile](https://github.com/crispgm/dotfiles/blob/master/Mac/Brewfile)
- [ ] Login locally on GitHub
- [ ] Setup `.dotfiles`

## Ruby

To avoid ban from GFW:

- [ ] Setup Gem sources: `gem sources --add https://gems.ruby-china.org/ --remove https://rubygems.org/`
- [ ] Setup bundler's mirror: `bundle config mirror.https://rubygems.org https://gems.ruby-china.org`

In non China mainland area, it should be ignored.

## Shadowsocks

- [ ] Install Shadowsocks-osx
- [ ] Import custom [user-rules](https://github.com/crispgm/dotfiles/tree/master/Shadowsocks)

## Sublime Text

- [ ] Migrate [.sublime-settings](https://github.com/crispgm/dotfiles/tree/master/Mac/Apps/Sublime)
- [ ] Install [Tomorrow theme](https://github.com/chriskempson/tomorrow-theme.git)

## Finder

- [ ] Show Path Bar
- [ ] Remove labels and clean up Sidebar

## Dock

- [ ] Add blank seperator: `defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}`
