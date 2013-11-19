# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :boarding_pass do
    source "MyString"
    destination "MyString"
    transportation "MyString"
    seat "MyString"
    gate "MyString"
    counter "MyString"
  end
end
