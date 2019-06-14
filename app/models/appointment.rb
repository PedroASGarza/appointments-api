class Appointment < ApplicationRecord
  belongs_to :physician
  belongs_to :patient

  validates :cause, presence: true
end
