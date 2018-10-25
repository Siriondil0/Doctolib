class Patient < ApplicationRecord
	has_many :Appointments, dependent: :destroy
 	has_many :doctors, through: :appointments
	has_one :city
end
