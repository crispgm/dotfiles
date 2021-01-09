tap 'homebrew/cask'
tap 'homebrew/cask-fonts'
tap 'homebrew/core'
tap 'homebrew/services'
tap 'homebrew/cask-versions'
tap 'homebrew/cask-drivers'
tap 'heroku/brew'

# primitives
brew 'git'
brew 'neovim'
brew 'zsh'
brew 'zsh-completions'
brew 'tmux'
brew 'fzf'

# dev
brew 'ruby'
brew 'go'
# dev: CI testing
if ENV.key? 'CI'
  puts 'In CI mode, skip non-primitive brews'
else
  brew 'cmake'
  brew 'mysql@5.7'
  brew 'sqlite'
  brew 'postgresql'
  brew 'youtube-dl'
  brew 'heroku'
  brew 'node'
  brew 'yarn'
  # brew 'wrk'

  # tools
  brew 'wget'
  brew 'mas'
  brew 'p7zip'
  brew 'dos2unix'
  brew 'htop'
  brew 'neofetch'
  brew 'onefetch'

  # productivity
  brew 'exa'
  brew 'ripgrep'
  brew 'fd'
  brew 'hexyl'
  brew 'xsv'
  brew 'jq'
  brew 'beancount'
  brew 'fava'

  # [fonts] for code editor
  cask 'font-noto-mono'
  cask 'font-hack'
  # [fonts] for web rendering
  cask 'font-fira-code'

  # [cask] dev
  # cask 'sublime-text'
  cask 'visual-studio-code'
  cask 'alacritty'
  # cask 'iterm2'
  # cask 'dash3'
  cask 'figma'

  # [cask] productivity
  cask '1password'
  cask 'alfred'
  cask 'google-chrome'
  cask 'brave-browser'
  cask 'raindropio'
  cask 'dropbox'
  cask 'hiddenbar'
  cask 'bitbar'
  cask 'snipaste'
  cask 'rectangle'
  cask 'shadowsocksx-ng'
  cask 'karabiner-elements'
  cask 'qmk-toolbox'
  cask 'via'
  cask 'appcleaner'
  cask 'google-trends'

  # [cask] entertainment
  cask 'iina'
  cask 'neteasemusic'
  cask 'qqmusic'

  # mas app
  mas 'WeChat', id: 836_500_024
  mas 'Unsplash Wallpapers', id: 1_284_863_847
  mas 'Microsoft ToDo', id: 1_274_495_053
  mas 'Microsoft OneNote', id: 784_801_555
  mas 'Bear', id: 1_091_189_122
  mas 'Lungo', id: 1_263_070_803
  mas 'Pages', id: 409_201_541
  mas 'Numbers', id: 409_203_825
  mas 'Keynote', id: 409_183_694
end
