class Comment < ApplicationRecord
  belongs_to :item
  belongs_to :user
  belongs_to :trade
end
