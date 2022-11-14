require 'rails_helper'

RSpec.describe Location, type: :model do
  describe 'associations' do
    it { should have_many(:jobs) }
    it { should have_many(:companies) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }

    subject { FactoryBot.build(:location) }
    it { should validate_uniqueness_of(:name).case_insensitive }
  end
end
