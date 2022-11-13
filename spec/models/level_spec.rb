require 'rails_helper'

RSpec.describe Level, type: :model do
  describe 'associations' do
    it { should have_many(:jobs) }
  end
end
