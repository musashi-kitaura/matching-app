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
作成した理由とした理由としては




# 工夫したポイント						

# 使用技術(開発環境)				

# 課題や今後実装したい機能			

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
