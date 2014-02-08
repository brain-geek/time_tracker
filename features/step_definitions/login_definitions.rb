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

Given(/^I am signed in$/) do
  step "I am on the \"Sign in\" page"
  step "I enter valid login credentials"
  step "I click \"Sign in\" button"
end