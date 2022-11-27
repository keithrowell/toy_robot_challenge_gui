Given('User is on the home page') do
  visit root_path
end

Then('The User should see content {string}') do |string|
  page.must_have_content string
end

