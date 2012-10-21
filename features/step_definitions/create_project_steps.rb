When /^I create a new project "(.*)"$/ do |project_name|
  click_link 'New Project'
  fill_in 'Name', :with => project_name
  click_button 'Create Project'
end

Then /^I should see "(.*?)"$/ do |message|
  page.has_content?(message).should be_true
end
