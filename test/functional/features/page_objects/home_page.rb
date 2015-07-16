require 'page-object'

class HomePage
  include PageObject

  page_url "http://localhost:8080/grails-blog/"

  link(:click_blog, :link_text => 'Log in as blogger')

end