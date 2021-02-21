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
