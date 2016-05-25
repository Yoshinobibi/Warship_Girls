package main.controller;

import main.dao.WeaponDao;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * Created by songshuang on 2016/5/23.
 */
@Controller("weaponController")
@RequestMapping("/weapon")
public class WeaponController {

    @Resource
    WeaponDao weaponDao;

    @RequestMapping(value = "/list")
    public String goWeapon(){
        return "weapon";
    }

    @RequestMapping(value = "/show")
    public String doShow(){
        return "11111";
    }
}
