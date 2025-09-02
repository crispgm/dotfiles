# primitives
brew 'git'
brew 'rcm'
brew 'neovim'
brew 'zsh'
brew 'zsh-completions'
brew 'tmux'
brew 'fzf'

# [brew] dev
brew 'ruby'
brew 'go'
brew 'shellcheck' # for CI checks
# dev: CI testing
if ENV.key? 'CI'
  puts 'In CI mode, skip non-primitive brews'
else
  # [brew] dev
  brew 'cmake'
  brew 'mysql'
  brew 'sqlite'
  brew 'postgresql'
  brew 'node'
  brew 'pnpm'
  brew 'luarocks'
  brew 'navi'
  brew 'tokei'

  # [brew] productivity
  brew 'wget'
  brew 'p7zip'
  brew 'dos2unix'
  brew 'mas'
  brew 'bat'
  brew 'eza'
  brew 'ripgrep'
  brew 'fd'
  brew 'zoxide'
  brew 'htop'
  brew 'jq'
  brew 'fx'
  brew 'qsv'
  brew 'pandoc'
  brew 'beancount'
  brew 'fava'
  brew 'yt-dlp'
  brew 'neofetch'
  brew 't-rec'

  # [brew] optional
  # brew 'hexyl'
  # brew 'onefetch'
  # brew 'glow'
  # brew 'mpv'

  # [font] for code editor
  cask 'font-menlo-for-powerline'
  cask 'font-iosevka-nerd-font'
  # [font] for web rendering
  cask 'font-fira-code'

  # [cask] dev
  cask 'visual-studio-code'
  cask 'ghostty'
  cask 'figma'

  # [cask] productivity
  cask '1password'
  cask 'alfred'
  cask 'google-chrome'
  cask 'dropbox'
  cask 'hiddenbar'
  cask 'rectangle'
  cask 'karabiner-elements'
  cask 'google-trends'
  cask 'rar'
  cask 'appcleaner'
  # cask 'qmk-toolbox'
  # cask 'via'

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
  mas 'WeChat', id: 836_500_024
  mas 'Command X', id: 6448461551
end
