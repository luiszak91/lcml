require 'spec_helper'

describe "user pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1',    text: "Sign") }
    #tiene k ver algo con el <title>Ruby on Rails Tutorial Sample App | <%= yield(:title) %></title>
    it { should have_selector('title', text: full_title('Sign up')) }
  end
end