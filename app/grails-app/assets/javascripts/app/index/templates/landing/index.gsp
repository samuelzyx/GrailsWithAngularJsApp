

<div>
    <div>
        <uib-carousel active="active" interval="vm.template.timeSlider*1000" interval="myInterval">
            <uib-slide class="minWidth100P" ng-repeat="slider in vm.template.sliders track by slider.id" ng-if="slider.enable">
                <img class="minWidth100P" ng-src="{{slider.urlImage}}">
                <div class="carousel-caption">
                    <h4 class="headerT">{{slider.headerT}}</h4>
                    <p  class="text">{{slider.text}}</p>
                </div>
            </uib-slide>
        </uib-carousel>
    </div>
</div>

<section class="sectpad team-area">
    <div class="thm-container clearfix">
        <div class="row">
            <div class="section_header color">
                <h2>Our Dedicated Team</h2>
            </div>
            <div class="our-team">
                <div class="col-sm-4 col-md-3 team" ng-repeat="team in vm.template.teams track by team.id" ng-if="team.enable">
                    <div class="team-images row m0">
                        <img ng-src="{{team.urlImage}}" alt="">
                    </div>
                    <ul class="nav social-icons">
                        <li ng-if="team.urlTwitter"><a href="{{team.urlTwitter}}" target="_blank"><i class="fa fa-twitter"></i></a></li>
                        <li ng-if="team.urlLinkedIn"><a href="{{team.urlLinkedIn}}" target="_blank"><i class="fa fa-linkedin-square"></i></a></li>
                        <li ng-if="team.urlFacebook"><a href="{{team.urlFacebook}}" target="_blank"><i class="fa fa-facebook-square"></i></a></li>
                        <li ng-if="team.urlSkype"><a href="{{team.urlSkype}}" target="_blank"><i class="fa fa-skype"></i></a></li>
                    </ul>
                    <div class="team-content">
                        <a href="#"><h4>{{team.name}}</h4></a>
                        <p>{{team.job}}</p>
                    </div>
                </div>
            </div>
        </div>
</section>
