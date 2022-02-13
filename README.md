# アプリケーション名

 ![](https://i.imgur.com/dPVLzfb.png)


## アプリケーション概要
このアプリケーションでは、就職活動で必要なデータを簡単に管理できるようになっています。

## 制作背景


就職活動をしていて、WordやExcelに企業の情報をうまくまとめられないことや、管理場所を把握しておく必要があるという手間がありました。また、インターンのサイトのIDやパスワードも保管しておかなければならないということもあり、就活生の負担が大きくなってしまいます。なので、簡単に情報をまとめることが可能で、簡単に情報を閲覧できるアプリケーションが欲しいという思いから、開発に至りました。



## 動作
* URL: 
    * https://sangi-job.com
    * (もしくは)https://www.sangi-job.com/
    * (見つからない場合は https://sangi-job2.herokuapp.com/)
    * ↓テスト用アカウント
    * ユーザ名：user
    * パスワード：password

## 制作環境
* 使用OS: Windows10 Home(20H2,21H2),macOS Monterey(ver.12.1)
* 開発デバイス: LIFEBOOK(UH75/C3),MacBook Air(2021モデル)
* 使用エディタ: Vscode,Cloud9(AWS)
* デプロイ: Heroku
* ドメイン取得: お名前ドットコム
* SSL化: cloudflare
* 技術スタック: Ruby(2.6.3p62),javascript,HTML5/CSS3
* フレームワーク: Rails(5.2.6),Bootstrap(4.5)
* リポジトリ: github


## 推奨使用環境

* 推奨機器:PC,スマホ(ios非対応)
* 推奨ブラウザ:chrome,firefox

## 開発期間

* 2022/1/20~Now(2週間程)

## 開発メンバー
役職:名前(担当)

静岡産業技術専門学校 みらい情報 3年　所属
* SE: 高橋幸希 (設計開発全般)
* PG①:小畑碧都 (Ruby,HTML,CSS,javascript)
* PG②:山本開世(Ruby,HTML,CSS)

※各個人の詳細情報はページの最下記にて追記




## 利用方法
1. ログインします。
2. メインページでは、直近のニュースや制作者お勧めの就職支援サイトが載っています。
3. 企業検索ページから情報を入力したい企業を検索し、必要な情報を入力してください。
4. 情報を入力したい企業が検索にヒットしない場合、新規企業登録を行ってください。
5. 情報入力後、マイテーブルから情報を確認することができます。
※追記：管理者ユーザのみが企業の削除などを行うことができます。


## 機能一覧
* アカウント作成
* ログイン・ログアウト
* 企業閲覧(テーブル表示)
* 企業情報入力(個人ごと管理)
* 企業情報の削除
* 企業検索
* 企業登録
* 企業削除(管理者のみ)
* 質問一覧
* 質問登録


## 工夫した点
### APIを複数使用しました。
* Weather API（https://openweathermap.org/api)
* News API (https://newsapi.org/)
* Calendar API　(https://developers.google.com/calendar/api)


### レスポンシブ対応
PC・スマホに対応するためにレスポンシブなページで作成しました。また、就活生の悩みを解決するために欲しい情報のデータなどをヒアリングしたり、UIについてレビューしてもらうことで、誰でも簡単に扱えるアプリケーションを制作しました。

## 今後の展望
必要な機能の実装数が少なく、レビューの数も足りていないので、まだ完成とは程遠い段階です。なので、実際に必要な機能や必要のない機能などの選定、就活生が欲しいと思っている機能の実装をしていきたいと思っています。

javascript(Vue.jsやReact)などのフレームワークを導入してSPAにしていき、処理を最低限にしていこうと考えております。

下記は今後追加していく機能です
* 集会所（情報交換の場&1on1やイベント募集）



## 各個人の詳細情報

- 高橋　幸希
    - gmail: j19015@sangi.jp
    - github: https://github.com/j19015
    - wantedly: https://www.wantedly.com/id/kouki_takahashi_ac


- 山本　開世
    - gmail: j19022@sangi.jp
    - github: https://github.com/y-kaisei
    - wantedly: https://www.wantedly.com/id/hiraku_yamamoto

- 小畑　碧都
    - gmail: j19008@sangi.jp
    - github : https://github.com/j19008
    - wantedly : https://www.wantedly.com/id/J19008

