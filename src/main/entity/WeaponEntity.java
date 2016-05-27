package main.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Created by songshuang on 2016/5/23.
 */
@Entity
@Table(name = "t_weapon")
public class WeaponEntity {
    /*ID*/
    private String id;
    /*武器编号*/
    private String weapon_no;
    /*星级*/
    private int stars;
    /*射程*/
    private String fire_range;
    /*火力*/
    private int firepower;
    /*鱼雷*/
    private int torpedo;
    /**/

    @Id
    @GenericGenerator(name="Generator",strategy = "uuid2")
    @GeneratedValue(generator = "Generator")
    @Column(nullable = false,length = 36)
    public String getId(){
        return id;
    }
    public void setId(String id){
        this.id = id;
    }
}
