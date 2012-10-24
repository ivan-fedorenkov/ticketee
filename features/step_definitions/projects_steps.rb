When /^I create a new project "(.*)"$/ do |project_name|
  click_link 'New Project'
  fill_in 'Name', :with => project_name
  click_button 'Create Project'
end
Given /^there is a project called "(.*?)"$/ do |name|
  @project = FactoryGirl.create(:project, :name => name)
end

