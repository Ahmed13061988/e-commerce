class CartSerializer < ActiveModel::Serializer
  attributes :id 
  has_many :items 
  # has_one :order 
end
