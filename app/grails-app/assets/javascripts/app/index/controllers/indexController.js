//= wrapped

angular
    .module("app.index")
    .controller("IndexController", IndexController);

function IndexController($scope, appDataFactory, $window, ngProgressFactory, applyTemplateFactory, Template) {

    var vm = this;
    vm.auth = undefined;
    vm.errorAuth = undefined;
    vm.user = {};
    vm.message = undefined;
    vm.progressbar = ngProgressFactory.createInstance();
    vm.progressbar.setHeight('3px');
    vm.progressbar.setColor('#db4800');
    vm.token = undefined;

    $scope.$on('$routeChangeStart', function() {
        vm.progressbar.start();
    });

    $scope.$on('$routeChangeSuccess', function() {
        vm.progressbar.complete();
    });

    $scope.$on('$routeChangeError', function() {
        vm.progressbar.stop();
    });

    //redireccion a inicio
    vm.redirectIndex = redirectIndex;
    function redirectIndex() {
        window.location= '/#/';
    }

    //redireccion a configuration
    vm.redirectConfig = redirectConfig;
    function redirectConfig() {
        window.location= '/#/configuration';
    }

    //check inicio de sesion
    vm.checkInicioSesion = checkInicioSesion;
    function checkInicioSesion() {
        if(vm.auth!=false){
            redirectIndex();
        }
    }

    //verifico sesion
    function checkWindowSession() {
        if($window.sessionStorage.token!=null){
            vm.auth=true;
            vm.token=$window.sessionStorage.token;
        }
        if(vm.auth==undefined){
            vm.auth=false;
            vm.token=undefined;
        }
    }

    //inicio de sesion
    vm.login = login;
    function login() {
        vm.progressbar.start();
        return appDataFactory.getDataLogin(vm.user.username,vm.user.password)
            .then(function successCallback(response) {
                vm.auth = true;
                $window.sessionStorage.token = response.data.access_token;
                vm.token = response.data.access_token;
                redirectConfig();
                addAlert('success','Inicio de sesión exitosa');
                vm.progressbar.complete();
            },function errorCallback(response) {
                var responseStatus = response.status;
                if(responseStatus=="401"){
                    addAlert('danger','Usuario o contraseña invalida');
                }
                closeSession();
                vm.progressbar.reset();
            });
    }

    //cierre de sesion
    vm.logout = logout;
    function logout() {
        vm.progressbar.start();
        closeSession();
        addAlert('success','Cierre de sesión exitosa');
        vm.progressbar.complete();
    }

    function closeSession() {
        vm.auth = false;
        vm.token = undefined;
        delete $window.sessionStorage.token;
    }

    // obtengo los parametros de grails
    vm.index = undefined;
    getIndex();
    function  getIndex() {
        vm.progressbar.start();
        return appDataFactory.getDataIndex()
            .then(function (response) {
                vm.index = response.data;
                checkWindowSession();
                vm.progressbar.complete();
            })
    }

    //notificaciones
    vm.alerts = []; //user type: success, info, warning or danger
    vm.addAlert = addAlert;
    function addAlert(type,msg) {
        vm.alerts.push({type:type, msg: msg});
    }

    function errorAlert() {
        vm.alerts.push({type:'danger',msg:'A ocurrido un error, intentelo mas tarde'});
    }

    vm.closeAlert = closeAlert;
    function closeAlert(index) {
        vm.alerts.splice(index, 1);
    }

    // obtengo los parametros del template
    vm.template = undefined;
    getTemplate();
    function  getTemplate() {
        vm.progressbar.start();
        return applyTemplateFactory.getDataTemplate()
            .then(function successCallback(response) {
                vm.template = response.data;
                vm.progressbar.complete();
            },function errorCallback(response) {
                errorAlert();
                vm.progressbar.stop();
            });
    }

    //update template
    vm.update = update;
    function update() {
        vm.progressbar.start();
        return applyTemplateFactory.setDataTemplate(vm.template,vm.token)
            .then(function successCallback(response) {
                addAlert('success','Actualización exitosa');
                vm.progressbar.complete();
            },function errorCallback(response) {
                addAlert('danger','No estas autorizado para realizar esta acción');
                vm.progressbar.stop();
            });
    }

}
