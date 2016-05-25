package main.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Created by songshuang on 2016/5/23.
 */
@Entity
@Table(name = "t_map")
public class MapEntity {
    private String id;
    /*图鉴编号*/
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
