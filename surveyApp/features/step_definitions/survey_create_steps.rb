Given /^I visit the home page$/ do
   visit surveyApp_home_index_path
end

When /^I should see the home page$/ do
  current_path.should == surveyApp_home_index_path
end
