require 'spec_helper'

describe "time_entries/index" do
  before(:each) do
    assign(:time_entries, [
      stub_model(TimeEntry,
        :length => 1,
        :active => false
      ),
      stub_model(TimeEntry,
        :length => 1,
        :active => false
      )
    ])
  end

  it "renders a list of time_entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
