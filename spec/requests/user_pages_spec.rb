require 'spec_helper'

describe "UserPages" do

	subject { page } 

	describe "Signup page" do 
		before { visit signup_path }

		it { should have_content('Sign Up') }
		it { should have_title('Sign Up') }
	end
end
