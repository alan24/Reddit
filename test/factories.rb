FactoryGirl.define do
	factory :user do
		sequence :email do |n|
			"alan#{n}@gmail.com"
		end
		password "omglolhaha"
		password_confirmation "omglolhaha"
	end

	factory :frontpage do
		title "Click here"
		description "You won't believe what happened to Bieber."
		association :user, factory: :user
	end
end