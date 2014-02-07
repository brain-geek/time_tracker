Given(/^I enter valid login credentials$/) do
  u = User.create! email: 'testuser@example.com', password: 'password', username: 'testuser'

  u.confirm!

  fill_in 'Username', with: 'testuser'
  fill_in 'Password', with: 'password'
end
