class User < ApplicationRecord
  validates_uniqueness_of :email, :mobile
  belongs_to :role
  has_many :customers
end
