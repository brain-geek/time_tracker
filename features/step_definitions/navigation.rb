Given(/^I am on the "(.*?)" page$/) do |page_name|
  if page_name == 'Sign in'
    visit new_user_session_path
  end
end
