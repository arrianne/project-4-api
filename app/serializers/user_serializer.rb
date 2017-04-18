class UserSerializer < ActiveModel::Serializer
  has_many :appointments
  attributes :id, :username, :email, :medication, :gp_name, :gp_address, :diagnosis_date, :diabetes_type, :emergency_name, :emergency_number
end
