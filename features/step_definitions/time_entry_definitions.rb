Then(/^I have one working timer$/) do
  TimeEntry.where(active: true).count.should == 1
end

Then(/^I have no working timers$/) do
  TimeEntry.where(active: true).count.should == 0
end
