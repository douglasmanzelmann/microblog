require 'spec_helper'

describe "User Pages" do

	subject  { page }

	describe "profile page" do
		#code to make a user variable
		let(:user) { FactoryGirl.create(:user) } 
		before { visit user_path(user) }

		it { should have_selector('h1', text: user.name) }
		it { should have_selector('title', text: user.name) } 
	end

	describe "Sign up page" do 

		before { visit signup_path } 

		it { should have_selector('h1', text: 'Sign Up') }
		it { should have_selector('title', text: full_title('Sign Up')) }

	end
end
