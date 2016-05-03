package main.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/4/18.
 */
@Entity
@Table(name = "t_warship")
public class WarshipEntity {
    private String id;
    /*图鉴编号*/
    private int ship_no;
    /*舰船名*/
    private String name;
    /*星级*/
    private int stars;
    /*舰种*/
    private String type;
    /*耐久*/
    private int durability;
    /*火力*/
    private int firepower;
    /*搭载*/
    private int carry;
    /*护甲*/
    private int armor;
    /*鱼雷*/
    private int torpedo;
    /*幸运*/
    private int luck;
    /*回避*/
    private int evasiveness;
    /*对空*/
    private int to_air;
    /*射程*/
    private int fire_range;
    /*索敌*/
    private int search;
    /*对潜*/
    private int anti_submarine;
    /*速度*/
    private int speed;

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

    @Column(nullable = false)
    public int getShip_no() {
        return ship_no;
    }
    public void setShip_no(int ship_no) {
        this.ship_no = ship_no;
    }

    @Column(nullable = false,length = 20)
    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }

    @Column
    public int getStars() {
        return stars;
    }
    public void setStars(int stars) {
        this.stars = stars;
    }

    @Column(length = 20)
    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }

    @Column
    public int getDurability() {
        return durability;
    }
    public void setDurability(int durability) {
        this.durability = durability;
    }

    @Column
    public int getFirepower() {
        return firepower;
    }
    public void setFirepower(int firepower) {
        this.firepower = firepower;
    }

    @Column
    public int getCarry() {
        return carry;
    }
    public void setCarry(int carry) {
        this.carry = carry;
    }

    @Column
    public int getArmor() {
        return armor;
    }
    public void setArmor(int armor) {
        this.armor = armor;
    }

    @Column
    public int getTorpedo() {
        return torpedo;
    }
    public void setTorpedo(int torpedo) {
        this.torpedo = torpedo;
    }

    @Column
    public int getLuck() {
        return luck;
    }
    public void setLuck(int luck) {
        this.luck = luck;
    }

    @Column
    public int getEvasiveness() {
        return evasiveness;
    }
    public void setEvasiveness(int evasiveness) {
        this.evasiveness = evasiveness;
    }

    @Column
    public int getTo_air() {
        return to_air;
    }
    public void setTo_air(int to_air) {
        this.to_air = to_air;
    }

    @Column
    public int getFire_range() {
        return fire_range;
    }
    public void setFire_range(int fire_range) {
        this.fire_range = fire_range;
    }

    @Column
    public int getSearch() {
        return search;
    }
    public void setSearch(int search) {
        this.search = search;
    }

    @Column
    public int getAnti_submarine() {
        return anti_submarine;
    }
    public void setAnti_submarine(int anti_submarine) {
        this.anti_submarine = anti_submarine;
    }

    @Column
    public int getSpeed() {
        return speed;
    }
    public void setSpeed(int speed) {
        this.speed = speed;
    }
}
