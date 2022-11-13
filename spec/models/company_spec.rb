require 'rails_helper'

RSpec.describe Company, type: :model do
  describe 'associations' do
    it { should have_many(:jobs) }
    it { should belong_to(:location) }
  end
end
