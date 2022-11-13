require 'rails_helper'

RSpec.describe Location, type: :model do
  describe 'associations' do
    it { should have_many(:jobs) }
    it { should have_many(:companies) }
  end
end
