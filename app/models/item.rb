class Item < ApplicationRecord
  has_one :brand
  has_one :trade
  has_one :card
  has_many :likes
  has_many :comments
  has_many :categories, through: :item_categories
  has_many :item_categories
  has_many :images
end
