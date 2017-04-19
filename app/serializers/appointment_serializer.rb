class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :location, :lat, :lng, :date_time, :specialist, :comment, :category_ids
  has_one :user
end
