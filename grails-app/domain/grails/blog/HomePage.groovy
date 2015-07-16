package grails.blog

class HomePage {

	String blogName

    static constraints = {
		blogName(blank: false)
    }
}
