# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
	factory :navbarlink do
    url "/pages/about"
    name "about"
    position "3"
  end
end

