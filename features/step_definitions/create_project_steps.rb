Given /^I am on the homepage$/ do
  visit('/')
end

When /^I create a new project "(.*)"$/ do |project_name|
  click_link 'New Project'
  fill_in 'Name', :with => project_name
  click_button 'Create Project'
end

Then /^I should see "(.*?)"$/ do |message|
  page.has_content?(message).should be_true
end

Then /^I should be on the project page for "(.*?)"$/ do |project_name|
  current_path.should == project_path(Project.find_by_name!(project_name))
end

