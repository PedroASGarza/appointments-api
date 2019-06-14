require 'rails_helper'

RSpec.describe Patient, type: :model do
  describe '#validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should_not allow_value("blah").for(:email) }
    it { should have_many(:appointments) }
  end
end
