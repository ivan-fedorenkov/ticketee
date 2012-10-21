When /^I create a new project "(.*)"$/ do |project_name|
  click_link 'New Project'
  fill_in 'Name', :with => project_name
  click_button 'Create Project'
end
