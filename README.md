# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# アプリ名	
マッチングアプリ

# 概要
個人アプリを紹介します。今回はペアーズを参考にマッチングアプリを作成しました。今回開発した箇所や得られた経験を紹介します。

# 本番環境
http://54.178.85.231/

ログイン情報（テスト用）

アカウント名　test1
・Eメール:test1@gmail.com
・パスワード:test12345

アカウント名　test2
・Eメール:test2@gmail.com
・パスワード:test２12345


# 制作背景(意図)											
ゲームプレイヤーのマッチングアプリを作りました。作成背景として、やりたいゲームを友達がしていない場合、一緒にプレーすることがない経験があります。そうなると、ゲーム攻略や素材集めなど時間がかかります。一緒にプレーしてくれる人を探す問題を解決するためこのアプリを作りました。アプリを使用し好きなゲームの人同士でマッチングして一緒にゲームを楽しみプレーするのが目的です。

# DEMO
## ユーザー登録
![ユーザー登録](https://github.com/musashi-kitaura/matching-app/blob/master/user.png)
ユーザー名とEメール、パスワードを入力し登録ボタンを押すとユーザー登録を行うことができます。


## トップ画像
![トップ画像](https://github.com/musashi-kitaura/matching-app/blob/master/image.png)
マイページを押すと、自分のアカウントのユーザーページに移動します。

## プロフィール表示
![プロフィール](https://github.com/musashi-kitaura/matching-app/blob/master/d0f512d9360b9074f55b639308191aa6.png)
プロフィールにはつぶやきや自己紹介が表示されています。

## プロフィール編集
![プロフィール編集](https://github.com/musashi-kitaura/matching-app/blob/master/463eeeddb04395e2d13e8f4ef9bcb822.png)
つぶやきや自己紹介、プロフィール画像を編集することができます。



## 登録されたユーザー表示
![登録されたユーザーの表示](https://github.com/musashi-kitaura/matching-app/blob/master/d0f512d9360b9074f55b639308191aa6.png)
探すを押すと登録されたuserが表示されます。



## マッチング機能・メッセージ機能
![マッチング機能](https://github.com/musashi-kitaura/matching-app/blob/master/image.png)
お互いのユーザー同士いいねボタンを押すとマッチングします。マッチングできた相手は、メッセージのやり取りをすることできます。


## コミュニティーやカテゴリーを表示
![コミュニティーやカテゴリーを表示](https://github.com/musashi-kitaura/matching-app/blob/master/a4f48f1ba9b734958fcd49f3c6489d66.png)
![コミュニティーやカテゴリーを表示](https://github.com/musashi-kitaura/matching-app/blob/master/b7ab6305c22421fecb3a08074fb34fa2.jpg)
コミュニティーは好きなジャンルゲームの人とマッチングしやすくする機能です。
カテゴリーは、コミュニティーの種類を一つにまとめたものです。


## ログアウト
![ログアウト](https://github.com/musashi-kitaura/matching-app/blob/master/image.png)


# 実装予定の内容
・メッセージの自動更新機能
・トップページのデザイン修正
・ロゴの修正
・いいねを押した時に非同期で済みと表示される
・ログインしたユーザーをユーザー一覧に表示させない


# DB設計						

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, foreign_key: true|
|password|string|null: false|

### Association
- has_many :following_relationships
- has_many :followings
- has_many :follower_relationships
- has_many :followers
- has_many :messages
- has_many :rooms
- has_many :entries
- has_many :community_users
-  has_many :community,through: :community_users

## roomsテーブル

### Association
- has_many :entries
- has_many:messages

## relationshipsテーブル

|Column|Type|Options|
|------|----|-------|
|follower_id|integer|||
|following_id|integer|||

### Association
- belongs_to :follower
- belongs_to :following

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|content|text|null: false|
|user|references||
|room|references||

### Association
- belongs_to :user 
- belongs_to :room


## entriesテーブル

|Column|Type|Options|
|------|----|-------|
|user|references||
|room|references||

### Association
- belongs_to :user
- belongs_to :room

## communitiesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string||
|image|string||
|category|references||


### Association
- has_many :community_users
- has_many :users,through: :community_users
- belongs_to :category,optional: true

## community_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user|references||
|community|references||

### Association
- belongs_to :user
- belongs_to :community

## categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|name|strin||
|image|strin||

### Association
- has_many :communities
