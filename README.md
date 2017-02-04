
# Project kominka

## 動作環境

ruby 2.3.0p0


## railsの開発環境の構築(ubuntu16.04 + rbenv)

###1. 周辺ライブラリのインストール
```
ctrl + alt + 't'でターミナルをたち上げる

$ sudo apt-get install git

$ sudo apt-get install build-essential

$ sudo apt-get install libssl-dev

$ sudo apt-get install libsqlite3-dev

$ sudo apt-get install nodejs

$ git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile

$ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

$ type rbenv
```

###2. rubyのインストール
```
 git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

$ rbenv install -l

$ rbenv install 2.2.2p95

$ rbenv rehash

$ rbenv global 2.2.2p95

$ gem install bundler

```


## インストール方法

### 1. ソースの取得

SSH:
$ git clone git@github.com:tennmoku71/kominka.git

HTTPS:
`https://github.com/tennmoku71/kominka`

### 2. セットアップ
```
$ cd gonosen

$ bundle install --path vendor/bundle

$ bundle exec rake db:migrate

$ bundle exec rake db:seed
```

### 3. サーバーの立ち上げ
```
$ bundle exec rails server
```

### 4. サイトへのアクセス（ローカル）
ブラウザを立ち上げて
localhost:3000
にアクセス

### 5. サーバーのシャットダウン
ctrl + 'c'


## 開発の流れ
### 1. 開発用のブランチに移動
```
$ git checkout develop-○○○
新しくブランチを作る場合は git checkout -b develop-○○○

```
### 2. 開発コードをプッシュする

```
$ git add .
ファイルの削除を行った場合は git add -A
$ git commit -m "コミットメッセージ"
(コミットメッセージは簡潔にわかりやすく作業内容を表すもの)

以上を何回か繰り返す

間違ったコードを書いてコミットしてしまった場合は過去のコミットまで巻き戻す必要がある。そのために
$ git log
として戻したいコミットのidをコピーする(git log は 'q' で終了)
git reset --hard コミットID

```

### 3. コミットをgithubにプッシュする
```
$ git push origin develop-○○○
これでgithubのwebサイトから変更が確認できる
```

### 4. ブランチのマージ
```
何回かpushしてこのブランチでの開発が終わった場合はmasterブランチにmargeする。

https://github.com/gonosen/gonosenにアクセス

'pull request'(上のほうのバーにある)

'New pull requesr'(右上の緑のボタン)

'develop-○○○'(真ん中の Example comparisons の中)

'Create pull request'(真ん中左の緑のボタン)

タイトル：ブランチの目的を一言で表す
コメント：ブランチでやったことを細かく書く
'Create pull request'(右下の緑のボタン)

後は管理者が
'Marge pull request を実行する'

```


* URL一覧
  * inns
    - sign_in      -> /inns/sign_in
    - edit         -> /inns/"宿のID"/edit
  * users
    - sign_in      -> /users/sign_in
    - edit         -> /users/"ユーザーのID"/edit


#エラー集

##There was an error while trying to load the gem 'uglifier'.
Gem Load Error is: Could not find a JavaScript runtime. See https://github.com/rails/execjs for a list of available runtimes.

###sudo apt-get install node


