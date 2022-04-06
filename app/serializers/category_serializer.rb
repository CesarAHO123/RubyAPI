class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :products
  def products
    object.products.map(&:name)
  end

end
