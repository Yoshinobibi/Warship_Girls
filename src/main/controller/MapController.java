package main.controller;

import main.dao.MapDao;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * Created by songshuang on 2016/5/23.
 */
@Controller("mapController")
@RequestMapping("/map")
public class MapController {

    @Resource
    MapDao mapDao;

    @RequestMapping(value = "/list")
    public String goMap(){
        return "map";
    }
}
