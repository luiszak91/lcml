#require 'spec_helper'
#
#describe "user pages" do
#
#  subject { page }
#
#  describe "signup page" do
#    before { visit signup_path }
#
#    it { should have_selector('h1',    text: "Sign") }
#    #tiene k ver algo con el <title>Ruby on Rails Tutorial Sample App | <%= yield(:title) %></title>
#    it { should have_selector('title', text: full_title('Sign up')) }
#  end
#end


require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_selector('h1',    text: user.name) }
    it { should have_selector('title', text: user.name) }
  end
  
  #para hacer el sign up
  describe "signup" do

    before { visit signup_path }

    let(:submit) { "Create my account" }

    describe "with invalid information" do
    #fallan
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Nombre",         with: "Example User"
        fill_in "Email",        with: "user@example.com"
        fill_in "Password",     with: "foobar"
        fill_in "Confirmacion", with: "foobar"
      end

      #fallan
      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end
  
end