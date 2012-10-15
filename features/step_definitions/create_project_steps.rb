Given /^I am on the homepage$/ do
  visit('/')
end

When /^I create a new project$/ do
  click_link 'New Project'
  fill_in 'Name', :with => 'Text Mate2'
  click_button 'Create Project'
end

Then /^I should see "(.*?)"$/ do |message|
  page.has_content?(message)
end

