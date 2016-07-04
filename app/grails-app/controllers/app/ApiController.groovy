package app

import grails.plugin.springsecurity.annotation.Secured
import grails.converters.*
import grails.transaction.Transactional

class ApiController {

    def apiService

    @Secured('permitAll')
    def firstTemplate() {
        Template firstTemplate = apiService.firstTemplate()
        render firstTemplate?.properties as JSON
    }


    @Transactional
    @Secured('ROLE_ADMIN')
    def setTemplate(){
        def jsonObject = request.JSON
        Template firstTemplate = apiService.firstTemplate()
        firstTemplate?.properties = jsonObject
        if(firstTemplate.validate()){
            render firstTemplate.errors as JSON
            return
        }
        firstTemplate.save(flush:true)
    }

    @Secured('ROLE_ADMIN')
    def tokens(){
        render(contentType: "application/json") {
            tokens{
                for(a in apiService.allTokens()) {
                    token(tokenValue: a.tokenValue,username:a.username)
                }
            }
        }
    }
}