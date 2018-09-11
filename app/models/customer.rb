class Customer < ApplicationRecord
  belongs_to :user, optional: true
  validates_uniqueness_of :Mobile_No
end
