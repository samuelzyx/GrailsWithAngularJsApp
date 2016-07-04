/**
 * Created by sam on 21/06/16.
 */
angular
    .module("app.core")
    .factory("appService", appService);

function appService() {
    var vm= this;
    vm.type;
    vm.msg;

    return {
        getTypeMsg:getTypeMsg,
        setTypeMsg: setTypeMsg
    };

    function getTypeMsg() {
        return {type:vm.type,msg:vm.msg}
    }

    function setTypeMsg(type,msg) {
        vm.type = type;
        vm.msg = msg;
    }
}