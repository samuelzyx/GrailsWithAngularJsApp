<div class = "container">
    <div class="wrapper">
        <form ng-submit="vm.update()" name="template_Form" class="form-template">
            <h3 class="form-signin-heading">Change information</h3>
            <hr class="colorgraph">

            <!--Header-->
            <uib-accordion close-others="oneAtATime">
                <uib-accordion-group is-open="status.openHeader">
                    <uib-accordion-heading>
                        <h2 class="form-signin-section">Header <i class="pull-right glyphicon" ng-class="{'glyphicon-chevron-down': status.openHeader, 'glyphicon-chevron-right': !status.openHeader}"></i></h2>
                    </uib-accordion-heading>
                    <label for="appName">App name </label><input type="text" class="form-control" id="appName" name="appName" placeholder="App name" ng-model="vm.template.appName" value="{{vm.template.appName}}" ng-disabled="!vm.auth"/>
                    <label for="iconHeader">Icon header </label><input type="text" class="form-control" id="iconHeader" name="urlIcon" placeholder="Icon header" ng-model="vm.template.urlIcon" value="{{vm.template.urlIcon}}" ng-disabled="!vm.auth"/>
                    <label for="urlIco">Favicon* </label><input type="text" class="form-control" id="urlIco" name="urlIco" placeholder="Favicon" ng-model="vm.template.urlIco" value="{{vm.template.urlIco}}" ng-disabled="!vm.auth"/>
                </uib-accordion-group>
            </uib-accordion>

            <!--Sliders-->
            <uib-accordion close-others="oneAtATime">
                <uib-accordion-group is-open="status.openSlider">
                    <uib-accordion-heading>
                        <h2 class="form-signin-section">Sliders <i class="pull-right glyphicon" ng-class="{'glyphicon-chevron-down': status.openSlider, 'glyphicon-chevron-right': !status.openSlider}"></i></h2>
                    </uib-accordion-heading>
                    <label for="timeSlider">Time slider in Seconds </label><input type="number" class="form-control" name="timeSlider" id="timeSlider" placeholder="Time slider in Seconds" ng-model="vm.template.timeSlider" value="{{vm.template.timeSlider}}" min="1" ng-disabled="!vm.auth"/>
                    <uib-accordion close-others="oneAtATime">
                        <uib-accordion-group ng-repeat="slider in vm.template.sliders track by slider.id" is-open="slider.status.isOpen[$index]">
                            <uib-accordion-heading>
                                <h2 class="form-signin-section">Slider {{slider.id}}<i class="pull-right glyphicon" ng-class="{'glyphicon-chevron-down': slider.status.isOpen[$index], 'glyphicon-chevron-right': !slider.status.isOpen[$index]}"></i></h2>
                            </uib-accordion-heading>
                            <label for="enable{{slider.id}}">Enable </label><input type="checkbox" name="enable{{slider.id}}" id="enable{{slider.id}}" ng-model="slider.enable" ng-disabled="!vm.auth">
                            <br>
                            <label for="headerT{{slider.id}}">Header text </label><input type="text" class="form-control" id="headerT{{slider.id}}" name="headerT{{slider.id}}" placeholder="Header text" ng-model="slider.headerT" value="{{slider.headerT}}" ng-disabled="!vm.auth||!slider.enable"/>
                            <label for="text{{slider.id}}">Text </label><input type="text" class="form-control" id="text{{slider.id}}" name="text{{slider.id}}" placeholder="Text" ng-model="slider.text" value="{{slider.text}}" ng-disabled="!vm.auth||!slider.enable"/>
                            <label for="urlImage{{slider.id}}">Url image </label><input type="text" class="form-control" id="urlImage{{slider.id}}" name="urlImage{{slider.id}}" placeholder="Url image" ng-model="slider.urlImage" value="{{slider.urlImage}}" ng-disabled="!vm.auth||!slider.enable"/>
                        </uib-accordion-group>
                    </uib-accordion>
                </uib-accordion-group>
            </uib-accordion>

            <!--Body text-->
            <uib-accordion close-others="oneAtATime">
                <uib-accordion-group is-open="status.openBody">
                    <uib-accordion-heading>
                        <h2 class="form-signin-section">Body<i class="pull-right glyphicon" ng-class="{'glyphicon-chevron-down': status.openBody, 'glyphicon-chevron-right': !status.openBody}"></i></h2>
                    </uib-accordion-heading>
                    <label for="textH1">Title </label><input type="text" class="form-control" id="textH1" name="textH1" placeholder="Title" ng-model="vm.template.textH1" value="{{vm.template.textH1}}" ng-disabled="!vm.auth"/>
                    <label for="textP">Paragraph </label><textarea class="form-control minWidth100P maxWidth100P" id="textP" name="textP" placeholder="Paragraph" ng-model="vm.template.textP" rows="5" ng-disabled="!vm.auth">
                                {{vm.template.textP}}
                    </textarea>
                </uib-accordion-group>
            </uib-accordion>

            <!--Team-->
            <uib-accordion close-others="oneAtATime">
                <uib-accordion-group is-open="status.openFooter">
                    <uib-accordion-heading>
                        <h2 class="form-signin-section">Team<i class="pull-right glyphicon" ng-class="{'glyphicon-chevron-down': status.openFooter, 'glyphicon-chevron-right': !status.openFooter}"></i></h2>
                    </uib-accordion-heading>
                    <uib-accordion-group ng-repeat="team in vm.template.teams track by team.id" is-open="team.status.isOpen[$index]">
                        <uib-accordion-heading>
                            <h2 class="form-signin-section">Person {{team.id}}<i class="pull-right glyphicon" ng-class="{'glyphicon-chevron-down': team.status.isOpen[$index], 'glyphicon-chevron-right': !team.status.isOpen[$index]}"></i></h2>
                        </uib-accordion-heading>
                        <label for="enableTeam{{team.id}}">Enable </label><input type="checkbox" name="enableTeam{{team.id}}" id="enableTeam{{team.id}}" ng-model="team.enable" ng-disabled="!vm.auth">
                        <br>
                        <label for="name{{team.id}}">Name </label><input type="text" class="form-control" id="name{{team.id}}" name="name{{team.id}}" placeholder="Name" ng-model="team.name" value="{{team.name}}" ng-disabled="!vm.auth||!team.enable"/>
                        <label for="job{{team.id}}">Job </label><input type="text" class="form-control" id="job{{team.id}}" name="job{{team.id}}" placeholder="Job" ng-model="team.job" value="{{team.job}}" ng-disabled="!vm.auth||!team.enable"/>
                        <label for="urlImageTeam{{team.id}}">Url image </label><input type="text" class="form-control" id="urlImageTeam{{team.id}}" name="urlImageTeam{{team.id}}" placeholder="Url image" ng-model="team.urlImage" value="{{team.urlImage}}" ng-disabled="!vm.auth||!team.enable"/>
                        <label for="urlTwitterTeam{{team.id}}">Url Twitter </label><input type="text" class="form-control" id="urlTwitterTeam{{team.id}}" name="urlTwitterTeam{{team.id}}" placeholder="Url Twitter" ng-model="team.urlTwitter" value="{{team.urlTwitter}}" ng-disabled="!vm.auth||!team.enable"/>
                        <label for="urlLinkedInTeam{{team.id}}">Url LinkedIn </label><input type="text" class="form-control" id="urlLinkedInTeam{{team.id}}" name="urlLinkedInTeam{{team.id}}" placeholder="Url LinkedIn" ng-model="team.urlLinkedIn" value="{{team.urlLinkedIn}}" ng-disabled="!vm.auth||!team.enable"/>
                        <label for="urlFacebookTeam{{team.id}}">Url Facebook </label><input type="text" class="form-control" id="urlFacebookTeam{{team.id}}" name="urlFacebookTeam{{team.id}}" placeholder="Url Facebook" ng-model="team.urlFacebook" value="{{team.urlFacebook}}" ng-disabled="!vm.auth||!team.enable"/>
                        <label for="urlSkypeTeam{{team.id}}">Url Skype </label><input type="text" class="form-control" id="urlSkypeTeam{{team.id}}" name="urlSkypeTeam{{team.id}}" placeholder="Url Skype" ng-model="team.urlSkype" value="{{team.urlSkype}}" ng-disabled="!vm.auth||!team.enable"/>
                    </uib-accordion-group>
                </uib-accordion-group>
            </uib-accordion>

            <!--Footer-->
            <uib-accordion close-others="oneAtATime">
                <uib-accordion-group is-open="status.openFooter">
                    <uib-accordion-heading>
                        <h2 class="form-signin-section">Footer<i class="pull-right glyphicon" ng-class="{'glyphicon-chevron-down': status.openFooter, 'glyphicon-chevron-right': !status.openFooter}"></i></h2>
                    </uib-accordion-heading>
                    <label for="aboutUs">About us </label>
                    <textarea class="form-control minWidth100P maxWidth100P" id="aboutUs" name="aboutUs" placeholder="About us" ng-model="vm.template.aboutUs" rows="5" ng-disabled="!vm.auth">
                        {{vm.template.aboutUs}}
                    </textarea>
                        <label for="urldribbble">Url Dribble </label><input type="text" class="form-control" id="urldribbble" name="urldribbble" placeholder="Url Dribble" ng-model="vm.template.urldribbble" value="{{vm.template.urldribbble}}" ng-disabled="!vm.auth"/>
                        <label for="urlLinkedIn">Url LinkedIn </label><input type="text" class="form-control" id="urlLinkedIn" name="urlLinkedIn" placeholder="Url LinkedIn" ng-model="vm.template.urlLinkedIn" value="{{vm.template.urlLinkedIn}}" ng-disabled="!vm.auth"/>
                        <label for="urlFacebook">Url Facebook </label><input type="text" class="form-control" id="urlFacebook" name="urlFacebook" placeholder="Url Facebook" ng-model="vm.template.urlFacebook" value="{{vm.template.urlFacebook}}" ng-disabled="!vm.auth"/>
                        <label for="urlGooglePlus">Url Google Plus </label><input type="text" class="form-control" id="urlGooglePlus" name="urlGooglePlus" placeholder="Url Google Plus" ng-model="vm.template.urlGooglePlus" value="{{vm.template.urlGooglePlus}}" ng-disabled="!vm.auth"/>
                        <label for="urlTwitter">Url Twitter </label><input type="text" class="form-control" id="urlTwitter" name="urlTwitter" placeholder="Url Twitter" ng-model="vm.template.urlTwitter" value="{{vm.template.urlTwitter}}" ng-disabled="!vm.auth"/>
                        <label for="urlYoutube">Url Youtube </label><input type="text" class="form-control" id="urlYoutube" name="urlYoutube" placeholder="Url Youtube" ng-model="vm.template.urlYoutube" value="{{vm.template.urlYoutube}}" ng-disabled="!vm.auth"/>
                        <label for="contactUs">Contact us </label>
                        <textarea class="form-control minWidth100P maxWidth100P" id="contactUs" name="contactUs" placeholder="Contact us" ng-model="vm.template.contactUs" rows="5" ng-disabled="!vm.auth">
                            {{vm.template.contactUs}}
                        </textarea>
                        <label for="address">Address </label><input type="text" class="form-control" id="address" name="address" placeholder="Address" ng-model="vm.template.address" value="{{vm.template.address}}" ng-disabled="!vm.auth"/>
                        <label for="email">Email </label><input type="text" class="form-control" id="email" name="email" placeholder="Email" ng-model="vm.template.email" value="{{vm.template.email}}" ng-disabled="!vm.auth"/>
                        <label for="phone">Phone </label><input type="text" class="form-control" id="phone" name="phone" placeholder="Phone" ng-model="vm.template.phone" value="{{vm.template.phone}}" ng-disabled="!vm.auth"/>
                </uib-accordion-group>
            </uib-accordion>

            <button class="btn btn-lg btn-primary"  name="Submit" value="Login" type="Submit" ng-disabled="!vm.auth">Update</button>
        </form>
    </div>
</div>
