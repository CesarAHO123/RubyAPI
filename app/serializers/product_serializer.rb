class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :categories

end