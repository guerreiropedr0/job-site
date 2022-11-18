require 'rails_helper'

RSpec.describe Company, type: :model do
  describe 'associations' do
    it { should belong_to(:location) }
    it { should have_many(:jobs) }
  end

  describe 'validations' do
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:name) }

    subject { FactoryBot.build(:company) }
    it { should validate_uniqueness_of(:name).case_insensitive }
  end
end
