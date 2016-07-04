package app

class Slider {
    String urlImage
    String headerT //header text
    String text
    Boolean enable = Boolean.TRUE

    static belongsTo = [template:Template]

    static constraints = {
        headerT nullable: true, blank: true
        text nullable: true, blank: true
    }

    static mapping = {
        headerT sqlType:'text'
        text sqlType:'text'
        urlImage sqlType:'text'
    }
}
