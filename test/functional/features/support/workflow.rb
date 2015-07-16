require 'page-object'
require 'watir-webdriver'
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

def add_comment
  on_page PostPage do |page|
    page.submit
  end
end

def write_comment
  on_page PostPage do |page|
    page.type_comment
  end
end

def comment_text
  on_page PostPage do |page|
    page.get_comment
  end
end

def get_browser_url
  return @browser.url
end