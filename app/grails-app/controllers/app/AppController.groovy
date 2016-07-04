package app

import grails.core.GrailsApplication
import grails.plugin.springsecurity.annotation.Secured

class AppController {

    GrailsApplication grailsApplication
    def mailService,
        apiService

    @Secured('permitAll')
    def index() {
        [grailsApplication: grailsApplication]
    }

    @Secured('permitAll')
    def sendMessage(){
        Template firstTemplate = apiService.firstTemplate()
        if(firstTemplate.email){
            mailService.sendMail {
                to firstTemplate.email
                from "ss@tequilasoft.com"
                subject "Mensaje enviado por: ${params.email} desde SSTequilasoft"
                body params.message
            }
        }
        redirect(uri: '/')
    }
}
