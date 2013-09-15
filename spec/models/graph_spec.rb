require 'spec_helper'

describe Graph do
  let(:user) { FactoryGirl.create(:user) }
  before { @graph = user.graphs.build(graph_code: "Lorem ipsum") }

  subject { @graph }

  it { should respond_to(:graph_code) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should eq user }

  it { should be_valid }

  describe "when user_id is not present" do
    before { @graph.user_id = nil }
    it { should_not be_valid }
  end

  describe "with blank graph_code" do
    before { @graph.graph_code = " " }
    it { should_not be_valid }
  end
end
