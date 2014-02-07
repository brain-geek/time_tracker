When(/^I click "(.*?)" button$/) do |link_text|
  within "#container" do
    click_link_or_button link_text
  end
end

Then(/^I see "(.*?)"$/) do |target_text|
  page.should have_text(target_text)
end

Then(/^I should not see "(.*?)"$/) do |target_text|
  page.should_not have_text(target_text)
end
