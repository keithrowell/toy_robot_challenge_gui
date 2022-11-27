Given('No User is logged on') do
  visit root_path
end

Then('The User should see the Login Screen') do
  page.must_have_content "Sign In"
end