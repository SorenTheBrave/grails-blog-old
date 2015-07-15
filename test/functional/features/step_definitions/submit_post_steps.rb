require "watir-webdriver"

Given /^I am logged in as (.*)$/ do |active_user|
	visit_page blog_page
end

When /^I publish a new blog post$/ do 

	on_page BlogPage do |page|
		page.create_post
	end
	
	on_page NewPostPage do |page|
		page.post_title = "post1"
		page.post_content = "Some basic post content"
		page.submit
	end
end

Then /^I am notified that the blog post was successfully added$/ do
	on_page PostSuccessPage do |page|
		expect(page).to include("Success! Post was added.")
		page.return
	end
end

And /^the newly added blog post is at the top of the recent posts list$/ do
	on_page BlogPage do |page|
		expect(page.posts).to include("post1")
	end
end