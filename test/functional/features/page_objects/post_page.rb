require 'page-object'

class PostPage
  include PageObject

  page_url "http://localhost:8080/grails-blog/user/post1"

  link(:expand_comment_link, :id => 'Expand Comments')
  div(:comments, :id => 'Comment Container')

  def get_post_subject
    @browser.h1.text
  end
  def comments_exist?
    click_element(expand_comment_link)
    comments.visible?
  end
  def click_element (element)
    element.click
  end

end