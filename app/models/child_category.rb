class ChildCategory < ApplicationRecord
  belongs_to :category
  has_one :grandchild_category
end
