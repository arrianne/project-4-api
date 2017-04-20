class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :image
  has_one :appointments
end
