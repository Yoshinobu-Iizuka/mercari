# README

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|VARCHAR(40)|null: false,index: true|
|details|VARCHAR(1000)|null: false, index: true|
|condition|string|null: false, index: true|
|price|integer|null: false|
|size|string||
|shipping_charge_borne|string|null: false|
|shipping_method|string|null: false|
|shipment_source_area|string|null: false|
|estimated_shipping_date|string|null: false|
|user_id|reference|foreign_key: true|
|buyer_id|reference|foreign_key: true|
|brand_id|integer|
|category_id|integer|
|child_category_id|integer|
|grandchild_category_id|integer|

### Association
- belongs_to: brand
- belongs_to: category
- belongs_to: child_category
- belongs_to: grandchild_category
- has_one: trade
- has_one: card
- has_many: likes
- has_many: images
- has_many: comments

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_one :item

## child_categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_one :item

## grandchild_categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_one :item


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|before_comment|text||
|trade_comment|text||
|user_id|reference|foreign_key: true|
|item_id|reference|foreign_key: true|
|buyer_id|reference|foreign_key: true|
|trade_id|reference|foreign_key: true|

### Association
- belongs_to: item
- belongs_to: user
- belongs_to: buyer
- belongs_to: trade

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|text||

### Association
- had_one: item


## item_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|name|text|null: false|
|item_id|reference|foreign_key: true|

### Association
- belongs_to: item

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, foreign_key: true|
|comment|text||
|password|integer|null: false, unique: true|
|first_name|string|null: false|
|family_name|string|null: false|
|first_name_kana|string|null: false|
|family_name_kana|string|null: false|
|postal_code|integer|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|address_first|string|null: false|
|address_second|string|null: false|
|telephone|integer|unique: true|
|mail|string|unique: true|
|year|integer|null: false|
|month|integer|null: false|
|day|integer|null: false|

### Association
- has_many :items
- has_many :comments
- has_many :buyers
- has_many :evaluations
- has_many :likes
- has_many :trades

## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|number|integer|null: false|
|expiration_date_month|integer|null: false|
|expiration_date_year|integer|null: false|
|user_id|reference|foreign_key: true|

### Association
- belongs_to :user

## Likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|reference|foreign_key: true|
|item_id|reference|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item


## evaluationsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|reference|null: false, foreign_key: true|
|buyer_id|reference|null: false, foreign_key: true|
|comment|text|
|value|integer|

### Association
- belongs_to :user
- belongs_to :buyer


## tradesテーブル
|Column|Type|Options|
|------|----|-------|
|deposit|string|
|shipping_notification|integer|
|item_id|referemce|null: false, foreign_key: true|
|user_id|referemce|null: false, foreign_key: true|

### Association
- has_many :comments
- belongs_to :item
- belongs_to :user
