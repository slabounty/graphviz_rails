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

    describe "for signed-in users" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        FactoryGirl.create(:graph, user: user, graph_code: "Lorem ipsum")
        FactoryGirl.create(:graph, user: user, graph_code: "Dolor sit amet")
        sign_in user
        visit root_path
      end

      it "should render the user's feed" do
        user.feed.each do |item|
          expect(page).to have_selector("li##{item.id}", text: item.graph_code)
        end
      end
    end
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
