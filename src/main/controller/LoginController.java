package main.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by 95 on 2016/3/31.
 */
@Controller
@RequestMapping("/loginController")
public class LoginController {

    @RequestMapping(params = "go_login")
    public String go_login(){
        return "login";
    }
    @RequestMapping(params = "do_login")
    public String do_login(HttpServletRequest request){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println("login");
        System.out.println(username);
        System.out.println(password);
        if (username.equals("songshuang")&&password.equals("123456")){
            return "success";
        }else
            return "failure";
    }


}
