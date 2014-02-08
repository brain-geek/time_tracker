require 'spec_helper'

describe "time_entries/show" do
  before(:each) do
    @time_entry = assign(:time_entry, stub_model(TimeEntry,
      :length => 1,
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/false/)
  end
end
