require 'page-object'
include PageObject::PageFactory

def get_post_title
  on_page PostPage do |page|
    page.get_post_subject
  end
end

def go_to_blog
  on_page HomePage do |page|
    page.click_blog
  end
end

def go_to_blog_home
  visit_page HomePage
end

def go_to_post
  on_page BlogPage do |page|
    page.click_post
  end
end