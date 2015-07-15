require "watir-webdriver"

Given /^my favorite blogger has been very active$/ do

end

When /^I visit the blog for my favorite blogger$/ do
  blog_page.goToBlogger('Blogger Name');
  #set blogger/author property
end

Then /^then I should see a summary of my favorite blogger's 10 most recent posts in reverse order$/ do
   expect(blog_page.postsOrdered).to be_true
end
