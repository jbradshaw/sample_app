require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1',    text: 'Sample App') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home' }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'About') }
    it { should have_selector('title', text: full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) }
  end

  it "should have the right links on the layout" do
  	visit root_path
  	click_link "About"
  	page.should have_selector 'title', text: full_title('About Us')
  	click_link "Help"
  	page.should have_selector 'title', text: full_title('Help')
  	click_link "Contact"
  	page.should have_selector 'title', text: full_title('Contact')
  	click_link "Home"
  	click_link "Sign up now!"
  	page.should have_selector 'title', text: full_title('Sign up')
  end
end

# require 'spec_helper'

# describe "Static pages" do
	
# 	subject { page }

# 	describe "Home page" do
	 	
# 	 	before	{ visit root_path }

# 	 	it "Should have the h1 'Sample App'" do
# 	 		page.should have_selector('h1', text: 'Sample App')
# 	 	end 
 		
# 		it "should have the base title 'Home'" do
		      
# 		      page.should have_selector('title',
# 			text: "Ruby on Rails Tutorial Sample App")
# 		end

# 		it "should not have a custom page title" do
		      
# 		      page.should_not have_selector('title', text: '| Home')
# 		end
# 	end

# 	describe "Help page" do
	 	
# 		before	{ visit help_path }

# 	 	it "Should have the h1 'Sample App'" do

# 	 	page.should have_selector('h1', text: 'Help')
# 	 	end 
 		
# 		it "should have the title 'Help'" do
# 		      page.should have_selector('title',
# 			text: "Ruby on Rails Tutorial Sample App | Help")
# 		end
# 	end

# 	describe "About page" do
	 	
# 		before	{ visit about_path }


# 	 	it "Should have the h1 'About us'" do
# 	 		page.should have_selector('h1', text: 'About Us')
# 	 	end 

# 		it "should have the title 'About Us'" do
# 		      page.should have_selector('title',
# 			text: "Ruby on Rails Tutorial Sample App | About Us")
# 		end
# 	end

# 	describe "Contact" do

# 		before	{ visit contact_path }
 	
# 	 	it "Should have the h1 'Contact'" do
# 	 		page.should have_selector('h1', text: 'Contact')
# 	 	end 

# 		it "should have the title 'Contact'" do
# 		      page.should have_selector('title',
# 			text: "Ruby on Rails Tutorial Sample App | Contact")
# 		end
# 	end
# end

