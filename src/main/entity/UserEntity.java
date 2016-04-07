package main.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by 95 on 2016/4/1.
 */
@Entity
@Table(name = "t_user")
public class UserEntity implements Serializable {

    private String id;
    private String username;
    private String password;
    private Date create_date;

    public UserEntity(){

    }
    public UserEntity(String id,String username,String password){
        super();
        this.id = id;
        this.username = username;
        this.password = password;
    }

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
    @Column(length = 32)
    public String getUsername(){
        return username;
    }
    public void setUsername(String username){
        this.username = username;
    }
    @Column(length = 32)
    public String getPassword(){
        return password;
    }
    public void setPassword(String password){
        this.password = password;
    }
    @Column
    public Date getCreate_date(){
        return create_date;
    }
    public void setCreate_date(Date create_date){
        this.create_date = create_date;
    }
}
