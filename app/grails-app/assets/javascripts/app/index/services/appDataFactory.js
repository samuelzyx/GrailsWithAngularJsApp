/**Created by sam on 30/06/16.**/
//= wrapped

angular
    .module("app.index")
    .factory("appDataFactory", appDataFactory);

function appDataFactory($http) {
    return {
        getDataIndex:getDataIndex,
        getDataLogin:getDataLogin
    };

    function  getDataIndex() {
        return $http({
            method: "GET",
            url: "app/index"
        });
    }

    function getDataLogin(username,password) {
        return $http({
            method: "POST",
            url: '/api/login',
            data:{
                username: username,
                password: password
            }});
    }
}

