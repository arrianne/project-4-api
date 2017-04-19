class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :location, :lat, :lng, :date_time, :specialist, :comment, :category_ids, :user_id
  has_one :user
  has_many :categories
end
