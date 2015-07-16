require 'page-object'

class PostPage
  include PageObject

  page_url "http://localhost:8080/grails-blog/user/post1"

  def get_post_subject
    @browser.h1.text
  end

  button(:submit, :id => 'submit')

  text_area(:comment, id => 'new_comment_area')

  def type_comment
    @browser.text_field(:id, 'new_comment_area').set('test comment')
  end

  def get_comment
    #@browser.li(:id,  )
    pending
  end

end