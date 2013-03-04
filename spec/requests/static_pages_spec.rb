require 'spec_helper'

describe "Static pages" do
  subject { page }
  describe "Home page" do
  before { visit root_path } 

   # it "should have the h1 'lcml'" do
      #visit root_path esto lo cambiamos por before { visit root_path } al igual que los demas
      it { should have_selector('h1', text: 'BIENVENIDOS A MI APP LCML') }
      # page.should have_selector('h1', :text => 'Bienvenidos a la APP LCML') ---lo cambiamos x lo de arriba al igual que los de abajo


      #visit root_path
      it { should have_selector('title', text: full_title('Home') ) }
      #page.should have_selector('title',
      #                 :text => "Ruby on Rails Tutorial Sample App")--- lo cambiamos por lo de arriba


      #visit root_path
      it { should_not have_selector 'title', text: 'home'}
      #page.should_not have_selector('title', :text => '| Home') --- lo cambiamos por lo de arriba
    #end
  end
 describe "Help page" do
 before { visit help_path }
    #it "should have the h1 'Ayuda'" do
      #visit help_path
      it { should have_selector('h1',    text: 'Ayuda') }
      #page.should have_selector('h1', text: 'Help')
    #end

    #it "should have the title 'Help'" do
      #visit help_path
      it { should have_selector('title', text: full_title("Help")) }
      #page.should have_selector('title',
      #                 text: "Ruby on Rails Tutorial Sample App | Help")
   # end
  end


  describe "About page" do
  before { visit about_path }
  
  
    #it "should have the h1 'About'" do
     # visit about_path
     it { should have_selector('h1',    text: 'Acerca de Nosotros') }
      #page.should have_selector('h1', text: 'About Us')
    
    #end

    #it "should have the title 'About Us'" do
     # visit about_path
     it { should have_selector('title', text: full_title('About Us')) }
     # page.should have_selector('title',
     #               text: "Ruby on Rails Tutorial Sample App | About Us")
    #end
  end

  describe "Contact page" do
  before { visit contact_path }
  
  
    #it "should have the h1 'Contact'" do
      #visit contact_path
      
      it { should have_selector('h1',    text: 'Contact') }
      #page.should have_selector('h1', text: 'Contact')
    #end

    #it "should have the title 'Contact'" do
     # visit contact_path
     
     it { should have_selector('title', text: full_title('Contact')) }
      #page.should have_selector('title',
     #               text: "Ruby on Rails Tutorial Sample App | Contact")
    #end
  end 
end