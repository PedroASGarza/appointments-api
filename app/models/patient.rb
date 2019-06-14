class Patient < ApplicationRecord
  validates :name, :email, :type, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  has_many :appointments
end
