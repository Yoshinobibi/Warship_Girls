package main.controller;

import com.alibaba.fastjson.JSON;
import main.dao.WarshipDao;
import main.entity.WarshipEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import system.AjaxJson;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2016/4/18.
 */
@Controller
@RequestMapping("/warshipController")
public class WarshipController {

    @Resource
    WarshipDao warshipDao;

    @RequestMapping(params = "go_warship")
    public String go_warship(){
        return "warship";
    }

    @RequestMapping(params = "do_show")
    @ResponseBody
    public String do_show(){
        List<WarshipEntity> list =  warshipDao.doQuerySql();
        System.out.println(JSON.toJSONString(list, true));
        return JSON.toJSONString(list, true);
    }

    @RequestMapping(params = "do_add")
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
