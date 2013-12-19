# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :checkout do
    book_id 1
    last_name "MyString"
    first_name "MyString"
    checkout_date "2013-12-19"
    due_date "2013-12-19"
  end
end
