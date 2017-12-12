package daoImp;

import dao.DAO;
import dao.UserDao;
import entity.UserEntity;

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
        {String sql="insert into user (NAME,PASSWORD) values (?,?)";
            update(sql,name,password1);
            return true;
        }
        else return false;
    }

    public boolean replacepassword(String name,String password1,String password2,String password3)
    {
        if(password2.equals(password3))
        {String sql="update user set password=? where name=?";
            update(sql,password2,name);
            return true;
        }
        else return false;
    }

    public UserEntity getOne(String name)
    {
        String sql="select * from user where name=?";
        UserEntity user1=get(sql,name);
        return user1;
    }

    public List<UserEntity> getAll()
    {
        String sql="select * from user ";
        List<UserEntity> user1=getForList(sql);
        return user1;
    }
}
