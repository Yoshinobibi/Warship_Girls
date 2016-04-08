package main.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import system.AjaxJson;

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
    @ResponseBody
    public String do_login(HttpServletRequest request) {
        AjaxJson ajaxJson = new AjaxJson();
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username.equals("songshuang") && password.equals("123456")) {
            ajaxJson.setSuccess(true);
            ajaxJson.setMessage("Success!");
            return ajaxJson.getJsonStr();
        } else {
            ajaxJson.setSuccess(false);
            ajaxJson.setMessage("Failure!");
            return ajaxJson.getJsonStr();
        }
    }
}
