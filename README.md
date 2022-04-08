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
