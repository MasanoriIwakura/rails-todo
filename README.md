# Ruby on Rails の勉強用に全力で TODO アプリを作成する

## 開発環境

| Tool               | Version        |
| :----------------- | :------------- |
| macOS              | Mojave 10.14.5 |
| rbenv              | 1.1.2          |
| Ruby               | 2.6.3          |
| Rails              | 5.2.3          |
| Visual Studio Code | 1.36.1         |
| npm                | 6.10.1         |
| bulma              | 0.7.5          |

## 構築コマンド

```bash
# railsアプリの作成
# coffee scriptいらない
$ rails new rails-todo --skip-coffee

# レイアウト用にbulmaを追加
$ npm i --save-dev bulma

# Scaffoldのテンプレートをカスタマイズしたいため、コピー
# lib/templates/scaffoldの各テンプレートを修正
$ rails app:templates:copy

# TODOページ作成
$ rails g scaffold todo contents:string done:boolean

# マイグレーション
$ rails db:migrate

# 実行
$ rails s
```

## 機能追加

TODO アプリとしての機能はたったこれだけで完了してしまったため、機能追加・修正を行う。

### 問題点

- 簡単な TODO アプリなのに閲覧・編集画面がある　 → 一覧画面だけで操作したい

### やること

- [x] 不要なページの削除(Controller, View)
- [x] 一覧ページに編集機能を追加
