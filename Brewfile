tap 'homebrew/cask'
tap 'homebrew/cask-fonts'
tap 'homebrew/core'
tap 'homebrew/services'
tap 'homebrew/cask-versions'
tap 'homebrew/cask-drivers'

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
  brew 'cmake'
  brew 'gh'
  brew 'mysql'
  brew 'sqlite'
  brew 'postgresql'
  brew 'flyctl'
  brew 'node'
  brew 'pnpm'
  brew 'navi'
  brew 'tokei'

  # [brew] productivity
  brew 'wget'
  brew 'p7zip'
  brew 'rar'
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
  brew 'xsv'
  brew 'pandoc'
  brew 'beancount'
  brew 'fava'
  brew 'youtube-dl'
  brew 'neofetch'
  brew 'onefetch'
  brew 'glow'
  brew 'mpv'
  brew 'charmbracelet/tap/vhs'

  # [brew] optional
  # brew 'choose-rust'
  # brew 'curlie'
  # brew 'hexyl'
  # brew 'procs'

  # [font] for code editor
  cask 'font-menlo-for-powerline'
  cask 'font-iosevka-nerd-font'
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
  cask 'rectangle'
  cask 'appcleaner'
  cask 'karabiner-elements'
  cask 'google-trends'
  # cask 'qmk-toolbox'

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
end
