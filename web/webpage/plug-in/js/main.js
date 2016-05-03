function isLogin() {
    var name = $('#session').val();
    if(name!="null")
        return true;
    else
        return false;
}
window.onload = function () {
    var name = $('#session').val();
    if(!isLogin()){
        // $('#navi_form').append('<a class="btn btn-primary" href="loginController.do?go_login">'+'Sign In'+'</a>'+
        //     '<a class="btn btn-primary" href="userController.do?go_register">'+'Sign Up'+'</a>')
    }else
    if(isLogin()){
        $('#navi_form').html('<li class="dropdown">'+
            '<a href="#" class="dropdown-toggle" data-toggle="dropdown">'+
            '<img src="/webpage/images/avatar.png" height="30" width="30" class="img-circle">'+
            '<span>'+name+'</span>'+
            '<b class="caret"></b>'+
            '</a>'+
            '<ul class="dropdown-menu">'+
            '<li><a href="#">bibi</a></li>'+
            '<li class="divider"></li>'+
            '<li><a href="/loginController.do?do_logout">Sign Out</a></li>'+
            '</ul>'+
            '</li>'
        );
    }
};