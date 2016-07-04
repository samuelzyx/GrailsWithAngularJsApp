//= wrapped

angular
    .module("app.index")
    .factory("Template", Template);

function Template($window,$resource) {
    var Template = $resource(
        "template/:id",
        {
            id: '@id'
        },
        {
            list: {
                method: "GET",
                isArray: true
            },
            show:{
                method:"GET"
            },
            update: {
                method: "PUT"
            }
        }
    );
    return Template;
}