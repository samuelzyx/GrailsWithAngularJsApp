import app.*
import grails.util.Environment

class BootStrap {

    def init = { servletContext ->

        if (
        Environment.current == Environment.DEVELOPMENT||
                Environment.current == Environment.TEST) {
            Role admin = new Role("ROLE_ADMIN").save()
            User user = new User("admin@tequilasoft.com", "sstequila").save()
            UserRole.create(user, admin, true)

            new Template(appName: 'SustainableSite',
                    urlIco: '/assets/favicon.ico',
                    urlIcon: '/assets/grails-cupsonly-logo-white.svg',
                    textH1: 'Presentation',
                    textP: 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. ' +
                            'Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, ' +
                            'cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una ' +
                            'galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.',
                    aboutUs: 'SSTequilasoft template is a big library of pre-designed web elements which help you create ' +
                            'website in few minutes. Each and every design element was designed for retina ready display ' +
                            'on all kind of devices.',
                    urldribbble: '#',
                    urlLinkedIn: '#',
                    urlFacebook: '#',
                    urlGooglePlus: '#',
                    urlTwitter: '#',
                    urlYoutube: '#',
                    contactUs: 'Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer ut neque.',
                    address: '123 Street Name, City, Country.',
                    email: 'e-mail@company.com',
                    phone: '+1(888)000-0000').
                    addToSliders(new Slider(urlImage: '/assets/SS1.jpg', headerT: 'Slide 1', text: 'Nice image')).
                    addToSliders(new Slider(urlImage: '/assets/SS2.jpg', headerT: 'Slide 2', text: 'Awesome photograph')).
                    addToSliders(new Slider(urlImage: '/assets/SS3.jpg', headerT: 'Slide 3', text: 'Lorem ipsum dolor sit amet')).
                    addToSliders(new Slider(urlImage: '/assets/SS4.jpg', headerT: 'Slide 4', text: 'Fusce facilisis enim ac nulla aliquam porttitor')).
                    addToSliders(new Slider(urlImage: '/assets/SS5.jpg', headerT: 'Slide 5', text: 'In ut risus eget libero')).
                    addToSliders(new Slider(urlImage: '/assets/SS6.jpg', headerT: 'Slide 6', text: 'That is so cool')).
                    addToSliders(new Slider(urlImage: '/assets/SS7.png', headerT: 'Slide 7', text: 'Nunc sit amet risus vehicula')).
                    addToSliders(new Slider(urlImage: '/assets/SS8.jpg', headerT: 'Slide 8', text: 'In porttitor lacus vel ante')).
                    addToSliders(new Slider(urlImage: '/assets/SS9.jpg', headerT: 'Slide 9', text: 'In tempus neque sit amet orci sagittis faucibus')).
                    addToSliders(new Slider(urlImage: '/assets/SS10.jpg', headerT: 'Slide 10', text: 'Maecenas aliquam metus non dui dignissim')).
                    addToTeams(new Team(urlImage: '/assets/SST1.jpg',name: 'Sergio García',job: 'Company Founder',urlLinkedIn: '#', urlFacebook: '#', urlTwitter: '#', urlSkype: '#')).
                    addToTeams(new Team(urlImage: '/assets/SST2.jpg',name: 'Paulina Bermúdez',job: 'Agent',urlLinkedIn: '#', urlFacebook: '#', urlTwitter: '#', urlSkype: '#')).
                    addToTeams(new Team(urlImage: '/assets/SST3.jpg',name: 'John Martin',job: 'Engineer',urlLinkedIn: '#', urlFacebook: '#', urlTwitter: '#', urlSkype: '#')).
                    addToTeams(new Team(urlImage: '/assets/SST4.jpg',name: 'Silvia Vázquez',job: 'Agent',urlLinkedIn: '#', urlFacebook: '#', urlTwitter: '#', urlSkype: '#')).
                    save()
        }
    }
    def destroy = {
    }
}
