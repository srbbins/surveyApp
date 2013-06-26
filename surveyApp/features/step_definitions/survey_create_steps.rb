Given /^I visit the home page$/ do
   visit survey_app_home_index_path
end

When /^I should see the home page$/ do
  current_path.should == survey_app_home_index_path
end

When /^I visit the create new survey page$/ do
  visit new_survey_path
end

Then /^I should see the create new survey page$/ do
  current_path.should == new_survey_path
end

Then /^I click the (.*) link$/ do |link|
  click_link(link)
end

Then /^the value "(.*)" has been entered in the (.*) field$/ do |val, key|
  fill_in (key with val)
end

Then /^the (.*) button has been clicked$/ do |button|
  click_on('button')
end

Then /^a new survey object should be created with name "(.*)" and description "(.*)"$/ do |name, desc|
  find_survey(name, desc).should_not be_nil
end