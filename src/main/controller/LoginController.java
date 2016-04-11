package main.controller;


import main.dao.UserDao;
import main.entity.UserEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import system.AjaxJson;
import system.MD5Util;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by 95 on 2016/3/31.
 */
@Controller
@RequestMapping("/loginController")
public class LoginController {

    @Resource
    private UserDao userDao;

    @RequestMapping(params = "go_login")
    public String go_login(){
        return "login";
    }

    @RequestMapping(params = "do_login")
    @ResponseBody
    public String do_login(UserEntity userEntity, HttpServletRequest request) {
        AjaxJson ajaxJson = new AjaxJson();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        List<UserEntity> userEntityList = userDao.doQuerySql(username);
        if (userEntityList.size() > 0) {
            userEntity = userEntityList.get(0);
            if (userEntity.getUsername().equals(username)&&userEntity.getPassword().equals(MD5Util.md5(password))) {
                ajaxJson.setSuccess(true);
                ajaxJson.setMessage("登录成功！");
                return ajaxJson.getJsonStr();
            }
            else {
                ajaxJson.setSuccess(false);
                ajaxJson.setMessage("用户名或密码不正确！");
                return ajaxJson.getJsonStr();
            }
        }
        else {
            ajaxJson.setSuccess(false);
            ajaxJson.setMessage("登录失败！不存在此用户！");
            return ajaxJson.getJsonStr();
        }
    }
}
