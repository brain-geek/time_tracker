require 'spec_helper'

describe TimeEntry do
  it "should set .started_at and active automaticaly when created" do
    TimeEntry.new.started_at.to_i.should be_within(1).of(Time.now.to_i)
    TimeEntry.new.active?.should be_true
  end

  it ".stop_timer" do
    entry = TimeEntry.create!
    Delorean.time_travel_to "two hours from now"

    entry.stop_timer
    entry.reload

    entry.length.should be_within(2).of(2*60*60)
  end
end
