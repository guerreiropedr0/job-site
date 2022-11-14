require 'rails_helper'

RSpec.describe Type, type: :model do
  describe 'associations' do
    it { should have_many(:jobs) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }

    subject { FactoryBot.build(:type) }
    it { should validate_uniqueness_of(:name).case_insensitive }
  end
end
