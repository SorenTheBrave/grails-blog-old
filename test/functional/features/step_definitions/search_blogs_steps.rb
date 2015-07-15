require "watir-webdriver"

When /^I search for a blog post$/ do
  blog_page.searchPosts('free stuff')
end

Then /^I should see posts with that value in the title$/ do
  expect(blog_page.postTitles).to include('free stuff')
end
