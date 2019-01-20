class Trade < ApplicationRecord
  has_many :comments
  belongs_to :item
  belongs_to :user
end
