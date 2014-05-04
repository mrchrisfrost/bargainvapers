require 'spec_helper'

describe "UserPages" do

	subject { page } 

	describe "profile page" do 
		let(:user) { FactoryGirl.create(:user) }
		before { visit user_path(user) }

		it { should have_content(user.name) }
		it { should have_title(user.name) }
	end 

	describe "Signup page" do 
		before { visit signup_path }

		it { should have_content('Create Account') }
		it { should have_title('Sign Up') }
	end

	describe "create account" do 
		before { visit signup_path }

		let(:submit) { "Create my account" }

		describe "with invalid information" do 
			it "should not create user account" do 
				expect { click_button submit }.not_to change(User, :count)
			end
		end 

		describe "with valid information" do 
			before do 
				fill_in "Name", 				with: "Example User"
				fill_in "Email", 				with: "user@example.com"
				fill_in "Password", 			with: "foobar"
				fill_in "Confirmation", 		with: "foobar"
				fill_in "Shipping Address", 	with: "123 Park St"
				fill_in "State", 				with: "MA"
				fill_in "Phone Number", 		with: "555-555-5555"
			end 

			it "should create a user" do 
				expect { click_button submit }.to change(User, :count).by(1)
			end
		end
	end
end

