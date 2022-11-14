FactoryBot.define do
  factory :recipe do
    name { 'MyString' }
    preparation_time { 'MyString' }
    description { 'MyString' }
    public { false }
    user { nil }
  end
end
