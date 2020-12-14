class ItemSerializer < ActiveModel::Serializer
  attributes :id, :image, :name, :price
  has_many :carts
end
