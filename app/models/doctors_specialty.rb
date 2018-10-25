class DoctorsSpecialty < ApplicationRecord
	has_many :Doctor
	has_and_belongs_to_many :Specialty
end
