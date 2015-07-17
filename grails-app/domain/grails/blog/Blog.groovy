package grails.blog

class Blog {
	static hasMany = [posts:Post]

	

	String tile		//url
}
