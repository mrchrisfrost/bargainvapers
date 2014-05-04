require 'spec_helper'

	describe "Static_pages" do 

		subject { page }

		describe "Main page" do 
			before { visit root_path}


			it { should have_content('Bargain Vapers') } 
			it { should have_title('Bargain Vapers') }
			it { should have_title('| Main') }  
		end 

		describe "About page" do 
			before { visit about_path }

			it { should have_content('About Us') }
			it { should have_title('Bargain Vapers') }
			it { should have_title('| About') }
		end 

		describe "Contact page" do
			before { visit contact_path } 

			it { should have_content('Contact Us') }
			it { should have_title('| Contact') } 
		end 

		describe "Help page" do 
			before { visit help_path }

			it { should have_content('FAQ') }
			it { should have_title('| Help') }
		end 
	end
