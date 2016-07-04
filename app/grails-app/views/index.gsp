<!doctype html>
<html lang="en" class="no-js"  ng-app="app" ng-controller="IndexController as vm">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="https://fonts.googleapis.com/css?family=Oswald:400,100,300,500,700%7CLato:400,300,700,900&amp;subset=latin,latin-ext" rel="stylesheet" type="text/css">
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="/app/app.js" />
    <script type="text/javascript">
        window.contextPath = "${request.contextPath}";
    </script>
    <title>{{vm.template.appName}}</title>
    <link rel="icon" ng-href="{{vm.template.urlIco}}" type="image/x-ico">
</head>
<body>
<i>{{progressbar}}</i>
<div class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" ng-click="navExpanded = !navExpanded">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/#/">
                <i class="fa grails-icon">
                    <img id="urlIcon" ng-src="{{vm.template.urlIcon}}" alt="Icon">
                </i>
                {{vm.template.appName}}
            </a>
        </div>
        <div class="navbar-collapse collapse" aria-expanded="false" uib-collapse="!navExpanded">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown" uib-dropdown>
                    <a href="#" class="dropdown-toggle" uib-dropdown-toggle role="button" aria-haspopup="true" aria-expanded="false">Account <span class="caret"></span></a>
                    <ul class="dropdown-menu" ng-switch="vm.auth" uib-dropdown-menu>
                        <li ng-switch-when="false"><a href="#/login">Login</a></li>
                        <li ng-switch-when="true"><a href="#/configuration">Configurations</a></li>
                        <li ng-switch-when="true"><a href="#/" ng-click="vm.logout()">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="divNotification">
    <uib-alert class='repeat-item' ng-repeat="alert in vm.alerts" type="{{alert.type}}" close="vm.closeAlert($index)" dismiss-on-timeout="4000">{{alert.msg}}</uib-alert>
</div>

%{--vistas dinamicas dependiendo del NgRoute--}%
<div ng-view class="view-animate"></div>
%{--vistas dinamicas dependiendo del NgRoute--}%

<footer id="footWrapper">

    <!-- footer widgets start -->
    <div class="footer-middle">
        <div class="container">
            <div class="row">
                <div class="col-md-6 first">
                    <h3>About us</h3>
                    <p class="foot-about-par">
                        {{vm.template.aboutUs}}
                    </p>
                    <div class="social-list half-icons">
                        <a ng-if="vm.template.urldribbble" href="{{vm.template.urldribbble}}" target="_blank"><i class="fa fa-dribbble ic-dribbble ic-colored sm-icon" data-hover=""></i><span>follow us</span></a>
                        <a ng-if="vm.template.urlLinkedIn" href="{{vm.template.urlLinkedIn}}" target="_blank"><i class="fa fa-facebook ic-facebook ic-colored sm-icon sm-icon" data-hover=""></i><span>Like us</span></a>
                        <a ng-if="vm.template.urlFacebook" href="{{vm.template.urlFacebook}}" target="_blank"><i class="fa fa-linkedin ic-linkedin ic-colored sm-icon" data-hover=""></i><span>follow us</span></a>
                        <a ng-if="vm.template.urlGooglePlus" href="{{vm.template.urlGooglePlus}}" target="_blank"><i class="fa fa-google-plus ic-gplus ic-colored sm-icon" data-hover=""></i><span>plus 1 us</span></a>
                        <a ng-if="vm.template.urlTwitter" href="{{vm.template.urlTwitter}}" target="_blank"><i class="fa fa-twitter ic-twitter ic-colored sm-icon" data-hover=""></i><span>follow us</span></a>
                        <a ng-if="vm.template.urlYoutube" href="{{vm.template.urlYoutube}}" target="_blank"><i class="fa fa-youtube ic-youtube ic-colored sm-icon" data-hover=""></i><span>follow us</span></a>
                    </div>
                </div>
                <div class="col-md-6 last contact-widget">
                    <h3>Contact Us</h3>
                    <p class="foot-about-par">
                        {{vm.template.contactUs}}
                    </p>
                    <ul class="details">
                        <li ng-if="vm.template.address"><i class="fa fa-map-marker"></i><span>{{vm.template.address}}</span></li>
                        <li ng-if="vm.template.email"><i class="fa fa-envelope"></i><span>{{vm.template.email}}</span></li>
                        <li ng-if="vm.template.phone"><i class="fa fa-phone"></i><span>{{vm.template.phone}}</span></li>
                    </ul>
                    <div class="foot-newletters">
                        <g:form controller="app" action="sendMessage" class="boo-nl">
                            <label>Send a message:</label>
                            <input class="form-control" type="email" value="" name="email" id="email" placeholder="Enter your email here" required="">
                            <input class="form-control" type="text" value="" name="message" id="message" placeholder="Enter your message here" required="">
                            <g:submitButton name="submit" value="Send" class="btn main-bg" >
                            </g:submitButton>
                        </g:form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <!-- footer copyrights left cell -->
                <div class="copyrights col-md-5">© Copyrights <b class="main-color">SSTequilasoft</b> V.{{vm.index.appversion}}. All rights reserved.</div>
            </div>
        </div>
    </div>
</footer>
</body>
</html>
