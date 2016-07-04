describe("app module", function() {
    var scope;

    beforeEach(angular.mock.module("app", function() {
    }));

    beforeEach(angular.mock.inject(function($rootScope) {
        scope = $rootScope.$new();
    }));

    describe("SliderController", function() {

        var ctrl;

        beforeEach(angular.mock.inject(function($controller) {
            ctrl = $controller("SliderController", {});
        }));

        it("should be tested", function() {
            expect(true).toEqual(false);
        });

    });

});
