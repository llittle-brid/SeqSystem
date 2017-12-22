package daoImp;

import dao.DAO;
import dao.UserDao;
import entity.UserEntity;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by DELL on 2017/11/28.
 *
 * @author MJY
 */
public class UserDaoImp extends DAO<UserEntity> implements UserDao {
    public boolean login(String name,String password)
    {
        String sql="select count(*) from USER where name=? and password=?";
        int count=Integer.valueOf(getForValue(sql,name,password).toString());
        if(count==1)return true;
        else return false;
    }

    public boolean registration(String name,String password1,String password2)
    {
        if(password1.length()>=6&&password1.equals(password2))
        {String sql="insert into USER (NAME,PASSWORD) values (?,?)";
            update(sql,name,password1);
            return true;
        }
        else return false;
    }

    public int num_pro(String name){
        String sql="select count(*) from project_member where ID_USER=(select ID_USER from user where name=?)";
        int count=Integer.valueOf(getForValue(sql,name).toString());
        return count;
    }

    public boolean replacepassword(String name,String password1,String password2,String password3)
    {
        if(password2.equals(password3))
        {String sql="update USER set password=? where name=?";
            update(sql,password2,name);
            return true;
        }
        else return false;
    }
    public boolean edit(String username,String qq,String address,String mail,String tel,String introduce,String gender)
    {
        String sql="update USER set qq=?,address=?,mail=?,tel=?,introduce=?,gender=? where name=?";
        System.out.println(username+qq+address+mail+tel+introduce+gender);
        update(sql,qq,address,mail,tel,introduce,gender,username);
        return true;
    }

/*
获取选择name的
 */
    public int getID(String name){
        String sql="select ID_USER from user where NAME=?";
        int ID = Integer.valueOf(getForValue(sql,name).toString());
        return ID;
    }
    /*
    获取组员在组内的level
     */
    public int level(int ID_USER){
        String sql="select RANK from project_member where ID_USER=?";
        int level = Integer.valueOf(getForValue(sql,ID_USER).toString());
        return level;
    }

    public UserEntity getOne(String name)
    {
        String sql="select * from USER where name=?";
        UserEntity user1=get(sql,name);
        return user1;
    }



    public List<UserEntity> getAll()
    {
        String sql="select * from USER ";
        List<UserEntity> user1=getForList(sql);
        return user1;
    }
}
