FactoryBot.define do
  factory :company do
    description { 'lorem ipsum' }
    name { 'john doe' }
    location_id { create(:location).id }
  end
end
