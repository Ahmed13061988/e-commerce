class ItemSerializer < ActiveModel::Serializer
  attributes :id, :image, :name, :price, :description
  has_many :carts 
  # belongs_to :order 
end
