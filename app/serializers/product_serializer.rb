class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :categories
  def categories
    object.categories.map(&:name)
  end

end
