class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :user
  has_one :appointment
end
