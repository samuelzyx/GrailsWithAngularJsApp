package app

import grails.transaction.Transactional

@Transactional
class ApiService {

    Template firstTemplate() {
        Template.get(1)
    }

    List<AuthenticationToken> allTokens() {
        AuthenticationToken.list()
    }
}
