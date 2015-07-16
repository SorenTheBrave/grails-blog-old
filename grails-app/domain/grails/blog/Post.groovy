package grails.blog

class Post {

	String postName
	String postContent

    static constraints = {
		postName(blank: false)
		postContent(blank: false)
    }
}
