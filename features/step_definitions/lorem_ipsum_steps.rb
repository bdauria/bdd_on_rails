Given(/^I am on the Lorem Ipsum page$/) do
  visit lorem_ipsum_path
end

When(/^I submit the form with "([^"]*)" as signature$/) do |name|
  fill_in('signature', with: name)
  click_on 'Submit'
end

Then(/^I should see the text "([^"]*)"$/) do |text|
  expect(page).to have_content text
end
