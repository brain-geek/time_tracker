require 'spec_helper'

describe TimeEntry do
  it "should set .started_at automaticaly when created" do
    TimeEntry.new.started_at.to_i.should be_within(1).of(Time.now.to_i)
  end
end
