Given(/^I am on the "(.*?)" page$/) do |page_name|
  pages = {
    'Sign in' => new_user_session_path,
    'Time tracking' => ''
  }

  pages.should have_key(page_name)
  visit(pages[page_name])
end
