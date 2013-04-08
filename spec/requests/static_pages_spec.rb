require 'spec_helper'

describe "StaticPages" do
  let(:base_title) { "Request for Information |" }
  describe "Home Page" do
    it "has the content 'Request for Information'" do
      visit '/static_pages/home'
      page.should have_content('Request for Information')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector(
        'title',
        text: "#{base_title} Home")
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
        text: "#{base_title} Help")
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
        text: "#{base_title} About")
    end
  end

  describe "Contact Page" do
    it "has the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_content('Contact')
    end

    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector(
        'title',
        text: "#{base_title} Contact")
    end
  end
end
