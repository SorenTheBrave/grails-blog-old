package grails.blog

class Comment {

	static belongsTo = Post
	
	Post post
	String comment
	String author
	Date dateCreated
	
	public int compareTo(Object o){
		return dateCreated.compareTo(o.dateCreated)
	}
}
