//= wrapped

angular
    .module("app.index")
    .factory("applyTemplateFactory", applyTemplateFactory);

function applyTemplateFactory($http) {
    return {
        getDataTemplate:getDataTemplate,
        setDataTemplate:setDataTemplate
    };

    function  getDataTemplate() {
        return $http({
            method: "GET",
            url: "/api/firstTemplate"
        });
    }

    function setDataTemplate(template,token) {
        return $http({
            method: "PUT",
            url: '/api/setTemplate',
            headers: {
                'Authorization': 'Bearer '+token,
                'Content-Type': 'application/json'
            },
            data: template
        });
    }
}

