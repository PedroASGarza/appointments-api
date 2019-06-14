class Physician < ApplicationRecord
  validates :name, :email, :type, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
