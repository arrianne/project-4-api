class UserSerializer < ActiveModel::Serializer
  has_many :appointments
  has_many :categories
  attributes :id, :username, :email, :medication, :gp_name, :gp_address, :diagnosis_date, :diabetes_type, :emergency_name, :emergency_number
end
