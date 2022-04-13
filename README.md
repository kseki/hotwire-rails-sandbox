# Hotwire rails tutorial

[Rails 7 Hotwire : a tutorial \| BootrAils](https://www.bootrails.com/blog/rails-7-hotwire-a-tutorial/)をやってみた

## Environment

- Ruby: 3.0.3
- Rails: 7.0.2.3
- Turbo-rails: 1.0.1

## Hotwireとは

- [HTML Over The Wire \| Hotwire](https://hotwired.dev/)
- Hotwireは、JSONの代わりにHTMLをワイヤで送信することで、JavaScriptをあまり使わずに最新のWebアプリケーションを構築するための代替アプローチである
- Turbo, Stimulus, Stradaで構成される

### Turbo

- [Turbo Handbook](https://turbo.hutwired.dev/handbook/drive)

#### Turbo Drive

- Turbolinksの後継
- linkを踏むと、body要素の差分を置き換えて、head要素の内容をマージする
- ブラウザの[Feach API](https://developer.mozilla.org/ja/docs/Web/API/Fetch_API/Using_Fetch)を使って実現

#### Turbo Frame

- ページをチャンク(パーシャル)に分割し、サーバーから新しいデータが来たときに単独で更新できるようにすることができる
- `turbo_frame_tag`で指定した部分が入れ替わる

#### Turbo Streams

- WebSocket、SSE、またはフォーム送信に応答して、HTMLとCRUDのようなアクションのセットだけを使用してページの変更を配信する。
- POST/PUT/PATCH/DELETEアクションに応答してHTMLのブロックを更新する（GETは動作しない）ブラウザを更新することなく、全ユーザーに変更を通知することができる。
- formatが`TURBO_STREAM`
- 更新箇所の指定: `turbo-frame`タグで`ID`指定
- 更新内容: `turbo-streem`タグで`action`（ここでは`append`追加が指定されている）、`target`にて更新先`ID`指定
- [Turbo Streams The seven actions | Turbo Reference](https://turbo.hotwired.dev/reference/streams#the-seven-actions)

#### Turbo Native

ネイテイブアプリ（iOS, Android）用

### Stimulus

- [hotwired/stimulus: A modest JavaScript framework for the HTML you already have](https://github.com/hotwired/stimulus)
- 控えめなJavaScriptフレームワーク
- HTMLのレンダリングに関心がない
- `data-controller`属性によってページを継続的に監視。その値から対応するコントローラークラスを見つけ、インスタンスを作成し要素に接続する。
- action: `data-action` 属性を使用して、コントローラのメソッドを DOM イベントに接続します。
- target: `data-(コントローラー名)-target`コントローラ内の重要な要素の位置を特定します。

