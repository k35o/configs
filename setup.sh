# Homebrewのセットアップ
echo "Setting up Homebrew..."
if ! command -v brew &> /dev/null; then
  echo "Homebrew not found. Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  # PATHを通す処理 (M1/M2 MacとIntel Macでパスが違うことに注意)
  # (略: Homebrewのインストール指示に従うのが確実)
else
  echo "Homebrew already installed. Updating..."
  brew update
fi
echo "Installing packages from Brewfile..."
brew bundle install --file=./brew/Brewfile
echo "Homebrew set up successfully."

# Gitの設定ファイルの配置
echo "Setting up Git configuration..."
ln -sf "$(pwd)/git/.gitconfig" ~/.gitconfig
ln -sf "$(pwd)/git/.gitignore" ~/.gitignore
mkdir -p ~/.zsh
curl -o ~/.zsh/git-completion.bash https://raw.githubusercontent.com/git/git/refs/heads/master/contrib/completion/git-completion.bash
curl -o ~/.zsh/_git https://raw.githubusercontent.com/git/git/refs/heads/master/contrib/completion/git-completion.zsh

echo "Git configuration set up successfully."

# VSCodeの設定ファイルの配置
echo "Setting up VSCode configuration..."
mkdir -p ~/Library/Application\ Support/Code/User
ln -sf "$(pwd)/vscode/settings.json" ~/Library/Application\ Support/Code/User/settings.json
echo "VSCode configuration set up successfully."

# zshの設定ファイルの配置
echo "Setting up zsh configuration..."
ln -sf "$(pwd)/zsh/.zshrc" ~/.zshrc
ln -sf "$(pwd)/zsh/.zprofile" ~/.zprofile
echo "zsh configuration set up successfully."

# starshipの設定ファイルの配置
echo "Setting up starship configuration..."
mkdir -p ~/.config
ln -sf "$(pwd)/starship/starship.toml" ~/.config/starship.toml
echo "starship configuration set up successfully."
