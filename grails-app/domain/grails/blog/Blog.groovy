package grails.blog

class Blog {
	static hasMany = [posts:Post]

	

	String title		//url
}
