# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
	factory :admin do
		first_name "dave"
		last_name "vader"
		email "user@example.com"
		password "password"
		password_confirmation "password"
	end
end
