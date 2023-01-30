# Golang で AtCoder をするための devcontainer の設定

個人的な使用目的ですが自由に使ってください。  
[devcontainer](https://code.visualstudio.com/docs/devcontainers/containers)上で[online-judge-tools](https://github.com/online-judge-tools/oj)と[atcoder-cli](https://github.com/Tatamo/atcoder-cli)を使ったAtCoder用環境です。  

Golangで使用する目的なので、設定は全てGolangです。
一番簡単なgolangテンプレートもデフォルトで入るようにしています。  


## devcontainerをビルドしたら

`setup.sh`を実行します。
```bash
$ bash ./setup/setup.sh
```

あとは`.bashrc`に書き込まれた設定を反映するためにターミナルを読み込み直して完了です。



## エイリアス

`oj`でのログイン用の`oj-login`と短縮形の`oj-l`
```bash
alias oj-login="oj login https://beta.atcoder.jp/"
alias oj-l="oj login https://beta.atcoder.jp/"
```

テスト用の`oj-test`と短縮形の`oj-t`の四つを設定してあります。
```bash
alias oj-test="oj test -c \"go run main.go\" -d tests"
alias oj-t="oj test -c \"go run main.go\" -d tests"
```

`acc`はコマンドが十分短いのでエイリアスは作っていません。