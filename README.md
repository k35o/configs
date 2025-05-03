# Mac Configuration for k8o

This repository contains the configuration files and setup scripts for k8o's Mac environment. Below is an overview of the folder structure and key files:

## Folder Structure

- **brew/**: Contains the Brewfile for managing Homebrew packages.
  - `Brewfile`: Lists all Homebrew packages to be installed.
- **git/**: Configuration files for Git.
  - `.gitconfig`: Git configuration settings.
  - `.gitignore`: Global Git ignore file.
- **starship/**: Configuration for the Starship prompt.
  - `starship.toml`: Starship prompt settings.
- **vscode/**: Visual Studio Code settings.
  - `settings.json`: User-specific VSCode settings.
- **zsh/**: Configuration files for Zsh.
  - `.zshrc`: Zsh runtime configuration.
  - `.zprofile`: Zsh profile configuration.
- **setup.sh**: A script to automate the setup process.

## Updating the Brewfile

To update the Brewfile with the current list of installed Homebrew packages, run the following command:

```bash
brew bundle dump --file=./brew/Brewfile --force
```

This will overwrite the existing `Brewfile` with the latest package list.

## Additional Notes

- Make sure to set the `signingkey` in your Git configuration to the GPG key configured on this Mac.
- SSH-related configurations are not included in this repository.
- Set the terminal font to **HackGen35 Console NF Regular 11** for optimal display.

## Usage

1. Clone this repository to your Mac.
2. Review and customize the configuration files as needed.
3. Run `setup.sh` to apply the configurations.
