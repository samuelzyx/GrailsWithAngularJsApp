
grails.plugin.springsecurity.successHandler.defaultTargetUrl = "/"
grails.plugin.springsecurity.auth.loginFormUrl = '/#/login'
grails.plugin.springsecurity.rest.token.storage.useGorm = true
grails.plugin.springsecurity.rest.login.useJsonCredentials = true
grails.plugin.springsecurity.rest.token.storage.gorm.tokenDomainClassName = 'app.AuthenticationToken'

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'app.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'app.UserRole'
grails.plugin.springsecurity.authority.className = 'app.Role'
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	[pattern: '/',               					        access: ['permitAll']],
	[pattern: '/error',          					        access: ['permitAll']],
	[pattern: '/index',          					        access: ['permitAll']],
	[pattern: '/index.gsp',      					        access: ['permitAll']],
	[pattern: '/shutdown',       					        access: ['permitAll']],
	[pattern: '/assets/**',      					        access: ['permitAll']],
	[pattern: '/**/js/**',       					        access: ['permitAll']],
	[pattern: '/**/fonts/**',       					    access: ['permitAll']],
	[pattern: '/**/css/**',      					        access: ['permitAll']],
	[pattern: '/**/images/**',   					        access: ['permitAll']],
	[pattern: '/**/favicon.ico', 					        access: ['permitAll']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
		[pattern: '/assets/**',      filters: 'none'],
		[pattern: '/**/js/**',       filters: 'none'],
		[pattern: '/**/fonts/**',    filters: 'none'],
		[pattern: '/**/css/**',      filters: 'none'],
		[pattern: '/**/images/**',   filters: 'none'],
		[pattern: '/**/favicon.ico', filters: 'none'],
		[pattern: '/**',             filters: 'JOINED_FILTERS']
]

grails {
    mail {
        host = "smtp.gmail.com"
        port = 465
        username = "sstequilasoft@gmail.com"
        password= "sstequila"
        props = ["mail.smtp.auth":"true",
                 "mail.smtp.socketFactory.port":"465",
                 "mail.smtp.socketFactory.class":"javax.net.ssl.SSLSocketFactory",
                 "mail.smtp.socketFactory.fallback":"false"]
    }
}

