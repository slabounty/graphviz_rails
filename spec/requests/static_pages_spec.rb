require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "has the content 'Request for Information'" do
      visit '/static_pages/home'
      page.should have_content('Request for Information')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector(
        'title',
        text: "Request for Information | Home")
    end
  end

  describe "Help Page" do
    it "has the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector(
        'title',
        text: "Request for Information | Help")
    end
  end

  describe "About Page" do
    it "has the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector(
        'title',
        text: "Request for Information | About")
    end
  end
end
