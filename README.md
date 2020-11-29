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

## room テーブル

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

## messageテーブル

|Column|Type|Options|
|------|----|-------|
|message|text|null: false|
|user|references||
|room|references||

### Association
- belongs_to :user 
- belongs_to :room


## entryテーブル

|Column|Type|Options|
|------|----|-------|
|user|references||
|room|references||

### Association
- belongs_to :user
- belongs_to :room
