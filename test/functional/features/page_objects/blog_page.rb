require 'page-object'

class BlogPage
  include PageObject

  links(:posts, :class => 'postLink')


  def goToBlogger (blogger)
    visit_page 'http://localhost:8080/grails-blog/' + blogger
  end

  def getPosts
    dates = []
    links.each do |i|
      dates[i] = getDate(links[i])
    end
  end

  def getDate (link)
    date = link.html.scan("\d{2}/\d{2}/\d{4}")
  end
end