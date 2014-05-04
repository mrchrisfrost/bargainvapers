require 'spec_helper'

	describe "Static_pages" do 

		describe "Main page" do 

			it "should have the content 'Bargain Vapers'" do 
				visit '/static_pages/main'
				expect(page).to have_content('Bargainvapers')
			end

			it "should have the base title" do 
				visit '/static_pages/main' 
				expect(page).to have_title('Bargainvapers')
			end 

			it "should have the custom page title" do 
				visit '/static_pages/main' 
				expect(page).to have_title('| Main')
			end 
		end 
	end 