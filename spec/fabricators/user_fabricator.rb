Fabricator(:user) do
  username { Faker::Internet.user_name }
  email { Faker::Internet.email }
  password 'password'

  confirmed_at Time.now
end
