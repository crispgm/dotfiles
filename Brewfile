tap 'homebrew/cask'
tap 'homebrew/cask-fonts'
tap 'homebrew/core'
tap 'homebrew/services'
tap 'homebrew/cask-versions'
tap 'homebrew/cask-drivers'
tap 'heroku/brew'

# primitives
brew 'git'
brew 'rcm'
brew 'neovim'
brew 'zsh'
brew 'zsh-completions'
brew 'tmux'
brew 'fzf'

# [brew] dev
brew 'ruby@2.7'
brew 'go'
brew 'shellcheck' # for CI checks
# dev: CI testing
if ENV.key? 'CI'
  puts 'In CI mode, skip non-primitive brews'
else
  # [brew] dev
  brew 'gh'
  brew 'cmake'
  brew 'mysql'
  brew 'sqlite'
  brew 'postgresql'
  brew 'heroku'
  brew 'node'
  brew 'yarn'
  brew 'navi'
  brew 'tokei'

  # [brew] productivity
  brew 'wget'
  brew 'p7zip'
  brew 'dos2unix'
  brew 'mas'
  brew 'bat'
  brew 'exa'
  brew 'ripgrep'
  brew 'fd'
  brew 'zoxide'
  brew 'choose-rust'
  brew 'htop'
  brew 'procs'
  brew 'hexyl'
  brew 'xsv'
  brew 'jq'
  brew 'curlie'

  # [brew] tools
  brew 'pandoc'
  brew 'beancount'
  brew 'fava'
  brew 'youtube-dl'
  brew 'neofetch'
  brew 'onefetch'
  brew 'glow'
  brew 'mpv'

  # [font] for code editor
  cask 'font-menlo-for-powerline'
  # [font] for web rendering
  cask 'font-fira-code'

  # [cask] dev
  cask 'visual-studio-code'
  cask 'alacritty'
  cask 'figma'

  # [cask] productivity
  cask 'clashx'
  cask '1password'
  cask 'alfred'
  cask 'google-chrome'
  cask 'dropbox'
  cask 'hiddenbar'
  cask 'snipaste'
  cask 'rectangle'
  cask 'appcleaner'
  cask 'karabiner-elements'
  cask 'qmk-toolbox'
  cask 'via'
  cask 'google-trends'

  # [cask] entertainment
  cask 'iina'
  cask 'neteasemusic'

  # mas app
  mas 'Unsplash Wallpapers', id: 1_284_863_847
  mas 'Microsoft ToDo', id: 1_274_495_053
  mas 'Microsoft OneNote', id: 784_801_555
  mas 'Bear', id: 1_091_189_122
  mas 'Lungo', id: 1_263_070_803
  mas 'Pages', id: 409_201_541
  mas 'Numbers', id: 409_203_825
  mas 'Keynote', id: 409_183_694
  mas 'AdGuard for Safari', id: 1_440_147_259
  mas 'Userscripts', id: 1_463_298_887
  mas 'Pinboard Tools', id: 1_552_590_875
  mas 'WeChat', id: 836_500_024
end
