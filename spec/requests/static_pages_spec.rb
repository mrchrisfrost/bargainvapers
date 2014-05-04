require 'spec_helper'

	describe "Static_pages" do 

		describe "Main page" do 

			it "should have the content 'Bargain Vapers'" do 
				visit root_path
				expect(page).to have_content('Bargain Vapers')
			end

			it "should have the base title" do 
				visit root_path 
				expect(page).to have_title('Bargain Vapers')
			end 

			it "should have the custom page title" do 
				visit root_path 
				expect(page).to have_title('| Main')
			end 
		end 

		describe "About page" do 

			it "should have the content 'About Us'" do 
				visit about_path
				expect(page).to have_content('About Us')
			end 

			it "should have the base title" do 
				visit about_path
				expect(page).to have_title('Bargain Vapers')
			end 

			it "should have the custom page title" do 
				visit about_path 
				expect(page).to have_title('| About')
			end 
		end 

		describe "Contact page" do 

			it "should have the content 'Contact Us'" do 
				visit contact_path 
				expect(page).to have_content("Contact Us")
			end 

			it "should have the base title" do 
				visit contact_path
				expect(page).to have_title('Bargain Vapers')
			end 

			it "should have custom page title" do 
				visit contact_path
				expect(page).to have_title('| Contact')
			end 
		end 

		describe "Help page" do 

			it "should have the content 'FAQ'" do 
				visit help_path 
				expect(page).to have_content('FAQ')
			end 

			it "should have the base title" do 
				visit help_path 
				expect(page).to have_title('Bargain Vapers')
			end 

			it "should have custom page title" do 
				visit help_path 
				expect(page).to have_title('| Help')
			end 
		end 
	end 