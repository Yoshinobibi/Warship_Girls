package main.controller;

import com.alibaba.fastjson.JSON;
import main.dao.WarshipDao;
import main.entity.WarshipEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import system.AjaxJson;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2016/4/18.
 */
@Controller("warshipController")
@RequestMapping("/warship")
public class WarshipController {

    @Resource
    WarshipDao warshipDao;

    @RequestMapping(value = "/list")
    public String go_warship(){
        return "warship";
    }

    @RequestMapping(value = "/show")
    @ResponseBody
    public String do_show(){
        //default order
        String order = "ship_no";
        //default way
        String way = "ASC";
        List<WarshipEntity> list =  warshipDao.doQuerySql(order,way);
        System.out.println(JSON.toJSONString(list, true));
        return JSON.toJSONString(list, true);
    }

    @RequestMapping(value = "/add")
    @ResponseBody
    public String do_add(WarshipEntity warshipEntity, HttpServletRequest request){
        AjaxJson ajaxJson = new AjaxJson();
        String name = request.getParameter("name");
        String type = request.getParameter("type");
        System.out.println(name);
        System.out.println(type);
        warshipEntity.setName(name);
        warshipEntity.setType(type);
        warshipDao.doAddSql(warshipEntity);
        ajaxJson.setSuccess(true);
        ajaxJson.setMessage("添加成功！");
        return ajaxJson.getJsonStr();
    }

}
