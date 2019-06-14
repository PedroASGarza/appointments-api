class Appointment < ApplicationRecord
  include FakeReminder
  belongs_to :physician
  belongs_to :patient

  validates :cause, presence: true

  after_save :send_notification, if: :reminder?

  def send_notification
    send_reminder('patient', patient, physician)
    send_reminder('physician', patient, physician)
  end

  def reminder?
    reminder
  end
end
