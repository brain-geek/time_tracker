Given(/^I enter valid login credentials$/) do
  u = Fabricate(:user)

  u.confirm!

  fill_in 'Username', with: u.username
  fill_in 'Password', with: 'password'
end

Given(/^I enter invalid login credentials$/) do
  fill_in 'Username', with: 'non_existant_testuser'
  fill_in 'Password', with: 'password'
end
