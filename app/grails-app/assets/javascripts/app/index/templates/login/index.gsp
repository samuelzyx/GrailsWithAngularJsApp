<div class = "container"  ng-init="vm.checkInicioSesion()">
    <div class="wrapper">
        <form ng-submit="vm.login()" name="Login_Form" class="form-signin">
            <h3 class="form-signin-heading">Please Sign In</h3>
            <hr class="colorgraph"><br>
            <input type="text" class="form-control" name="username" placeholder="Username" ng-model="vm.user.username" required="" autofocus="" />
            <input type="password" class="form-control" name="password" placeholder="Password" ng-model="vm.user.password" required=""/>
            <button class="btn btn-lg btn-primary btn-block"  name="Submit" value="Login" type="Submit">Login</button>
        </form>
    </div>
</div>
