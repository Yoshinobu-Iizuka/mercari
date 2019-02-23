class Item < ApplicationRecord
  belongs_to :brand
  belongs_to :category
  belongs_to :child_category
  belongs_to :grandchild_category
  has_one :trade
  has_one :card
  has_many :likes
  has_many :comments
  has_many :categories, through: :item_categories
  has_many :item_categories
  has_many :images
end
