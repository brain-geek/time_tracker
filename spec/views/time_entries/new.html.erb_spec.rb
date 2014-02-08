require 'spec_helper'

describe "time_entries/new" do
  before(:each) do
    assign(:time_entry, stub_model(TimeEntry,
      :length => 1,
      :active => false
    ).as_new_record)
  end

  it "renders new time_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", time_entries_path, "post" do
      assert_select "input#time_entry_length[name=?]", "time_entry[length]"
      assert_select "input#time_entry_active[name=?]", "time_entry[active]"
    end
  end
end
