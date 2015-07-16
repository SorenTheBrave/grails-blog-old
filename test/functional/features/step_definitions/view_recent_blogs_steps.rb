require "watir-webdriver"

Given /^my favorite blogger has been very active$/ do

end

When /^I visit the blog for my favorite blogger$/ do
  on_page BlogPage do |page|
    page.goToBlogger('Blogger Name');
  end
end

Then /^then I should see a summary of my favorite blogger's 10 most recent posts in reverse order$/ do
  on_page BlogPage do |page|
    expect(page.postsOrdered).to be_true
  end
end
