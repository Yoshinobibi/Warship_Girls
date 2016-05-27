package main.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Created by songshuang on 2016/5/23.
 */
@Entity
@Table(name = "t_map")
public class MapEntity {
    /*ID*/
    private String id;
    /*地图编号*/
    private String map_no;
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
