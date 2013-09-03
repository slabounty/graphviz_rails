require 'spec_helper'

describe "StaticPages" do
  let(:base_title) { "GraphViz Rails |" }

  subject { page }

  describe "Home Page" do
    before do
      visit root_path
    end

    it { should have_content('GraphViz Rails') }
    it { should have_selector('title', text: full_title('')) }
  end

  describe "Help Page" do
    before do
      visit help_path
    end

    it { should have_content('Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About Page" do
    before do
      visit about_path
    end

    it { should have_content('About')  }
    it { should have_selector('title', text: full_title('About')) }
  end

  describe "Contact Page" do
    before do
      visit contact_path
    end

    it { should have_content('Contact') }
    it { should have_selector( 'title', text: full_title('Contact')) }
  end
end
