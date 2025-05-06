# dotfiles

## 概要

[macOS](https://www.apple.com/jp/macos/) 向けの dotfiles です.

## シェルの確認

デフォルトで使用しているシェルを表示します.

```sh
echo $SHELL
```

zsh を利用している場合 -> /bin/zsh

bash を利用している場合 -> /bin/bash

デフォルトシェルを bash から zsh へ切り替えるときは以下のコマンドを実行します.
```sh
chsh -s /bin/zsh
```

## Homebrewのセットアップ

[Homebrew](https://brew.sh/) をインストールします.

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Homebrew のパスを通します.

```sh
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
```

```sh
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Homebrew が正常にインストールされたことを確認します.

```sh
brew doctor
```

## Gitのセットアップ

Git の有無を確認します.

```sh
which git
```

Git が無い場合は Homebrew でインストールします.

```sh
brew install git
```

ユーザー名を設定します.

```sh
git config --global user.name "your name"
```

メールアドレスを設定します.

```sh
git config --global user.email "your_email@example.com"
```

Git の設定を git config で確認します.

```sh
git config --list
```

## SSH鍵の生成

新しいSSH鍵を生成します.

```sh
ssh-keygen -t ed25519 -C "your_email@example.com"
```

生成した公開鍵をクリップボードへコピーします.

```sh
cat ~/.ssh/id_ed25519.pub | pbcopy
```

下記のURLにアクセスした後、"New SSH Key" ボタンを押下して、公開鍵を設定します.

https://github.com/settings/keys
