package app

class Team {
    String urlImage
    String name //header text
    String job
    String urlLinkedIn
    String urlFacebook
    String urlTwitter
    String urlSkype
    Boolean enable = Boolean.TRUE

    static belongsTo = [template:Template]

    static constraints = {
        name nullable: true, blank: true
        job nullable: true, blank: true
        urlLinkedIn nullable: true, blank: true
        urlFacebook nullable: true, blank: true
        urlTwitter nullable: true, blank: true
        urlSkype nullable: true, blank: true
    }

    static mapping = {
        name sqlType:'text'
        job sqlType:'text'
        urlImage sqlType:'text'
        urlLinkedIn sqlType:'text'
        urlFacebook sqlType:'text'
        urlTwitter sqlType:'text'
        urlSkype sqlType:'text'
    }
}
