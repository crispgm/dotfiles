# Setup up a new Windows 10

Inspired by [KrauseFx/new-mac](https://github.com/KrauseFx/new-mac).

## Windows Subsystem Linux

- [ ] [Setup DSL and install Hyper](https://dev.to/lloydstubber/my-wsl-setup-for-development)
- [ ] Change Ubuntu aptitude source to a fast mirror: `/etc/apt/sources.list`
- [ ] Install `git`, `zsh`, `oh-my-zsh`
- [ ] Setup `.dotfiles`

## Ruby

- [ ] Setup Ruby ecology by: <https://gorails.com/setup/windows/10>

To avoid ban from GFW:

- [ ] Setup Gem sources: `gem sources --add https://gems.ruby-china.org/ --remove https://rubygems.org/`
- [ ] Setup bundler's mirror: `bundle config mirror.https://rubygems.org https://gems.ruby-china.org`

In non China mainland area, it should be ignored.

## Shadowsocks

- [ ] Install Shadowsocks-windows
- [ ] Import custom [user-rules](https://github.com/crispgm/dotfiles/tree/master/Shadowsocks)

## Sublime Text

- [ ] Migrate [.sublime-settings](https://github.com/crispgm/dotfiles/tree/master/Mac/Apps/Sublime)
- [ ] Install [PackageControl](https://packagecontrol.io/)
- [ ] Install `vue-syntax-highlight`, `syntax-highlighting-for-sass` and `bable-sublime` with `PackageControl`
- [ ] Install [Tomorrow theme](https://github.com/chriskempson/tomorrow-theme.git)

## Windows Explorer

- [ ] Display extension name
