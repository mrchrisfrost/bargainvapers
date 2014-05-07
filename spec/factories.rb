FactoryGirl.define do 
	factory :user do 
		name 		"Test User"
		email 		"tu@test.com"
		address		"123 Park St"
		phone 		"555-555-5555"
		state		"MA"
		zipcode		"55555"
		password	"foobar"
		password_confirmation		"foobar"
	end
end 