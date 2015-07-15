require 'page-object'

class NewPostPage
  include PageObject

  text_field(:post_title, :id => 'post_title')
  text_field(:post_content, :id => 'post_content')
  button(:submit, :id => 'submit')

end