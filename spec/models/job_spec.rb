require 'rails_helper'

RSpec.describe Job, type: :model do
  describe 'associations' do
    it { should belong_to(:category) }
    it { should belong_to(:company) }
    it { should belong_to(:level) }
    it { should belong_to(:location) }
    it { should belong_to(:type) }
  end

  describe 'validations' do
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:position) }
    it { should validate_numericality_of(:salary) }
  end
end
