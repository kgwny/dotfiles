### 手動で実行する場合のメモ

## Homebrew のインストール

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## iTerm2 のインストール

```sh
brew install --cask iterm2
```

## フォント HackGen のインストール

```sh
brew install font-hackgen-nerd
```

以下の手順で iTerm2 に設定する
iTerm2 のメニュー -> setting -> profiles -> Text -> Font -> HackGen35 Console NF

## Oh My Zsh のインストール

前提として iTerm2 を使用すること
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Powerlevel10k のインストール

```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

```sh
vim ~/.zshrc
```

以下のとおり修正
```
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"
```

```sh
source ~/.zshrc
```

## zsh-autosuggestions のインストール

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

```sh
vim ~/.zshrc
```

以下のとおり修正
```
# plugins=(git)
plugins=(
  git
  zsh-autosuggestions
)
```

```sh
source ~/.zshrc
```

## zsh-syntax-highlighting のインストール

```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

```sh
vim ~/.zshrc
```

以下のとおり修正
```
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)
```

```sh
source ~/.zshrc
```
