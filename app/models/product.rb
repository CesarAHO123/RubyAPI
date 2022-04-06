class Product < ApplicationRecord
  has_many :categories
  validates :name,:description,:categories_id, presence:true
end
