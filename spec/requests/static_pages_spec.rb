require 'spec_helper'
describe "Static pages" do

	## Define glabal site title
	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

   ## Home Page
   describe "Home page" do
    it "should have the h1 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('title', 
      				:text => 'Sample App')
    end

    it "should have the title 'Home'" do
			visit '/static_pages/home'
			page.should have_selector('title',
					:text => "#{base_title} | Home")
	end
  end


	## Help page
	describe "Help page" do
		it "should have the h1 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end
		it "should have the title 'Help'" do 
			visit '/static_pages/help' 
			page.should have_selector('title', 
				:text => "#{base_title} | Help")
		end
	end

	## About page
	describe "About page" do
		it "should have the h1 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('h1', 
				:text => 'About Us')
		end
			it "should have the title 'About Us'" do
			visit '/static_pages/about' 
			page.should have_selector('title',
				:text => "#{base_title} | About Us")
		end
	end

	## Contact page
	describe "Contact page" do
		it "should have h1 'Contact'" do
			visit '/static_pages/contact'
			page.should have_selector('h1', 
				:text => "Contact")
		end
		it "should have title 'Contact'" do
			visit '/static_pages/contact'
			page.should have_selector('title', 
				:text => "#{base_title} | Contact")
		end
	end
end