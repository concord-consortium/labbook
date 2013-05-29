require 'spec_helper'

describe "snapshots/index" do
  before(:each) do
    assign(:snapshots, [
      stub_model(Snapshot),
      stub_model(Snapshot)
    ])
  end

  it "renders a list of snapshots" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
