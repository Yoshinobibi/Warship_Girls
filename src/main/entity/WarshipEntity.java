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
    private String name;

    @Id
    @GenericGenerator(name="Generator",strategy = "uuid2")
    @GeneratedValue(generator = "Generator")
    @Column(nullable = false)
    public String getId(){
        return id;
    }
    public void setId(String id){
        this.id = id;
    }

    @Column(nullable = false)
    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }
}
