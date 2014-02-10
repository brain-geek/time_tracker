Then(/^I have one working timer$/) do
  TimeEntry.where(active: true).count.should == 1
end

Then(/^I have no working timers$/) do
  TimeEntry.where(active: true).count.should == 0
end

Then(/^I have timer with "(.*?)" seconds logged$/) do |length|
  entry = TimeEntry.last
  entry.length.should be_within(2).of(length)
end