require 'page-object'

class PostPage
  include PageObject

  page_url "http://localhost:8080/grails-blog/user/post1"

  def get_post_subject
    @browser.h1.text
  end

end