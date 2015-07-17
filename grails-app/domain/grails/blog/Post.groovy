package grails.blog

class Post {

	static hasMany = {comments:Comment}
	SortedSet comments
	
	
	String postName
	String postContent
	String teaser
	Boolean published = false
	Date lastUpdated
	
    static constraints = {
		postName(nullable:false, blank: false, length:1..50)
		teaser(length:1..100)
		postContent(nullable: false)
		published(nullable: false)
    }
}
