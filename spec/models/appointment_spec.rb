require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe '#validations' do
    it { should validate_presence_of(:cause) }
    it { should belong_to(:physician) }
    it { should belong_to(:patient)}

    it "triggers send_notification on save" do
      ## test that notification is sent if requested
    end
  end
end
