#FactoryGirl.define do 
#	factory :user do
#		name "Douglas Manzelmann"
#		email "dougamanzelmann@gmail.com"
#		password "foobar"
#		password_confirmation "foobar" 
#	end
#end
FactoryGirl.define do 
	factory :user do
		sequence(:name) { |n| "Person #{n}" } 
		sequence(:email) { |n| "person_#{n}@example.com" }
		password "foobar"
		password_confirmation "foobar"
	end
end