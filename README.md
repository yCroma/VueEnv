# VueEnv
Vueの開発環境を構築できるdocker-compose

## 作られるもの

```
.
├── Dockerfile
├── Makefile
├── README.md
├── commands
│   └── create.sh
├── docker-compose.yml
└── spa
```

アプリケーションのコードはspa下に保存されます

## 使い方

初回起動は`make vue-create`<br>
[http://localhost:8080](http://localhost:8080)にWelcomeページが表示される<br>
<br>
以降の起動は、`make vue-start`<br>
<br>
`npm run serve`をしたい場合、<br>
通常、`make serve`<br>
バックグラウンド、`make serve-d`<br>
<br>
ここに載っていない機能は、[Makefileへ](https://github.com/yCroma/VueEnv/blob/master/Makefile)

## 注意点

アプリ名を変更したい場合は、`commands/create.sh`の`APP_NAME`と`docker-compose`を修正する必要が生まれます。<br>
１つの`.env`から引数を持ってくる方法がわかり次第更新します。
