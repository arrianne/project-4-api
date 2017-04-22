class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :location, :lat, :lng, :start, :specialist, :comment, :category_ids, :user_id, :duration, :title
  has_one :user
  has_many :categories
end
