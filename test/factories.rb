FactoryGirl.define do
	factory :frontpage do
		title "Click here"
		description "You won't believe what happened to Bieber."
		association :users
	end
end