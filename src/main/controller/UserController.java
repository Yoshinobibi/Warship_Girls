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
import java.io.Serializable;
import java.util.Date;

/**
 * Created by 95 on 2016/4/2.
 */
@Controller
@RequestMapping("/userController")
public class UserController implements Serializable{


    @Resource
    private UserDao userDao;

    @RequestMapping(params = "go_register")
    public String go_register(){
        return "register";
    }

    @RequestMapping(params = "do_register")
    @ResponseBody
    public String do_register(UserEntity userEntity,HttpServletRequest request){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        AjaxJson ajaxJson = new AjaxJson();

        if (userDao.doQuerySql(username).size() < 1){
            userEntity.setUsername(username);
            userEntity.setPassword(MD5Util.md5(password));
            userEntity.setCreate_date(new Date());
            userDao.doAddSql(userEntity);
            ajaxJson.setSuccess(true);
            ajaxJson.setMessage("注册成功！");
            return ajaxJson.getJsonStr();
        }
        else {
            ajaxJson.setSuccess(false);
            ajaxJson.setMessage("注册失败！");
            return ajaxJson.getJsonStr();
        }



    }
}
