# README

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
|address1|string|null: false|
|address2|string|null: false|
|telephone|integer|unique: true|
|mail|string|unique: true|

### Association
- has_one :card
- has_many :items

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
|brand|string|index|
|category_l|string|null: false, index: true|
|category_m|string|null: false, index: true|
|category_s|string|null: false, index: true|
|buyer|integer||
|status|integer|null: false|
|user|reference|foreign_key: true|

### Association
- belongs_to :user
- has_many :images


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|name|text|null: false|
|item|reference|foreign_key: false|

### Association
- belongs_to :item

## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|number|integer|null: false|
|expiration_date_month|integer|null :false|
|expiration_date_year|integer|null :false|
|user|reference|foreign_key: true|

### Association
- has_one :user
