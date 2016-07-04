describe("app module", function() {
    var $httpBackend;

    beforeEach(angular.mock.module("app", function() {
    }));

    beforeEach(angular.mock.inject(function(_$httpBackend_) {
        $httpBackend = _$httpBackend_;
    }));

    afterEach(function() {
        $httpBackend.verifyNoOutstandingExpectation();
        $httpBackend.verifyNoOutstandingRequest();
    });

    describe("Slider domain", function() {

        var Slider;

        beforeEach(angular.mock.inject(function(_Slider_) {
            Slider = _Slider_;
        }));

        it("should be tested", function() {
            expect(true).toEqual(false);
        });

    });

});
