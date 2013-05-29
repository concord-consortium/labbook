require 'spec_helper'

describe "snapshots/edit" do
  before(:each) do
    @snapshot = assign(:snapshot, stub_model(Snapshot))
  end

  it "renders the edit snapshot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", snapshot_path(@snapshot), "post" do
    end
  end
end
