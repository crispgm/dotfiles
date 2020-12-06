tap "homebrew/cask"
tap "homebrew/cask-fonts"
tap "homebrew/core"
tap "homebrew/services"
tap "homebrew/cask-versions"
tap "homebrew/cask-drivers"
tap "heroku/brew"

# primitives
brew "git"
brew "neovim"
brew "zsh"
brew "zsh-completions"
brew "tmux"

# dev
brew "ruby"
brew "go"
# dev: CI testing
unless ENV.key? "CI_MODE"
  puts "in CI mode, ignore non-essential brew"
else
  brew "cmake"
  brew "mysql@5.7"
  brew "sqlite"
  brew "postgresql"
  brew "youtube-dl"
  brew "heroku"
  brew "node"
  brew "yarn"
  brew "wrk"

  # tools
  brew "wget"
  brew "mas"
  brew "p7zip"
  brew "dos2unix"
  brew "proxychains-ng"
  brew "htop"
  brew "neofetch"
  brew "onefetch"

  # productivity
  brew "exa"
  brew "fzf"
  brew "ripgrep"
  brew "fd"
  brew "hexyl"
  brew "xsv"
  brew "jq"
  brew "beancount"
  brew "fava"

  # [fonts] for code editor
  cask "font-noto-mono"
  cask "font-hack"
  # [fonts] for web rendering
  cask "font-fira-code"

  # [cask] dev
  cask "sublime-text"
  cask "visual-studio-code"
  cask "iterm2"
  cask "dash3"
  cask "figma"

  # [cask] productivity
  cask "1password"
  cask "alfred"
  cask "google-chrome"
  cask "brave-browser"
  cask "dropbox"
  cask "karabiner-elements"
  cask "hiddenbar"
  cask "snipaste"
  cask "rectangle"
  cask "shadowsocksx-ng"
  cask "qmk-toolbox"
  cask "via"
  cask "appcleaner"
  cask "google-trends"

  # [cask] entertainment
  cask "iina"
  cask "neteasemusic"
  cask "qqmusic"

  # mas app
  mas "WeChat", id: 836500024
  mas "Unsplash Wallpapers", id: 1284863847
  mas "Microsoft ToDo", id: 1274495053
  mas "Microsoft OneNote", id: 784801555
  mas "Bear", id: 1091189122
  mas "Lungo", id: 1263070803
  mas "Pages", id: 409201541
  mas "Numbers", id: 409203825
  mas "Keynote", id: 409183694
end
