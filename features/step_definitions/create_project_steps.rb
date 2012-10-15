Given /^I am on the homepage$/ do
  visit('/')
end

When /^I create a new project$/ do
  click_link 'New Project'
end

Then /^I should see "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

