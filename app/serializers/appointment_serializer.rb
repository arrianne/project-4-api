class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :location, :lat, :lng, :date_time, :specialist, :comment
  has_one :user
end
