class Role < ApplicationRecord
  validates_uniqueness_of :title
  has_many :users
end
