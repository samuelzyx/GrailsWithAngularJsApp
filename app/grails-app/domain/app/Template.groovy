package app

class Template {
    String appName
    String urlIcon
    String urlIco
    String textH1
    String textP
    Integer timeSlider = 5
    String aboutUs
    String urldribbble
    String urlLinkedIn
    String urlFacebook
    String urlGooglePlus
    String urlTwitter
    String urlYoutube
    String contactUs
    String address
    String email
    String phone


    static hasMany = [sliders:Slider,teams:Team]

    static constraints = {
        urlIco nullable: true, blank: true
        urlIcon nullable: true, blank: true
        textH1 nullable: true, blank: true
        textP nullable: true, blank: true
        aboutUs nullable: true, blank: true
        contactUs nullable: true, blank: true
        address nullable: true, blank: true
        email nullable: true, blank: true
        phone nullable: true, blank: true
        urldribbble nullable: true, blank: true
        urlLinkedIn nullable: true, blank: true
        urlFacebook nullable: true, blank: true
        urlGooglePlus nullable: true, blank: true
        urlTwitter nullable: true, blank: true
        urlYoutube nullable: true, blank: true
    }

    static mapping = {
        textH1 sqlType:'text'
        textP sqlType:'text'
        urlIcon sqlType:'text'
        urlIco sqlType:'text'
        aboutUs sqlType:'text'
        contactUs sqlType:'text'
        address sqlType:'text'
        email sqlType:'text'
        phone sqlType:'text'
        urldribbble sqlType:'text'
        urlLinkedIn sqlType:'text'
        urlFacebook sqlType:'text'
        urlGooglePlus sqlType:'text'
        urlTwitter sqlType:'text'
        urlYoutube sqlType:'text'
        sliders sort: 'id', order: 'asc', cascade: 'all-delete-orphan'
        teams sort: 'id', order: 'asc', cascade: 'all-delete-orphan'
    }
}
