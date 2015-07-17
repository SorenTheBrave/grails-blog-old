package grails.blog

class Post {

	static hasMany = {comments:Comment}
	SortedSet comments
	
	
	String postName
	String postContent
	String teaser
	Boolean published = false
	
	
    static constraints = {
		postName(blank: false)
		postContent(blank: false)
    }
}
