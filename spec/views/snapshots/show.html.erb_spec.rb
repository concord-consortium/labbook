require 'spec_helper'

describe "snapshots/show" do
  before(:each) do
    @snapshot = assign(:snapshot, stub_model(Snapshot))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
