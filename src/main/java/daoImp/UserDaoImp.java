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
        String sql="SELECT COUNT(*) from USER WHERE NAME=? and PASSWORD=?";
        int count=Integer.valueOf(getForValue(sql,name,password).toString());
        if(count==1)return true;
        else return false;
    }

    public boolean registration(String name, String password1, String password2) {
        if (password1.length() >= 6 && password1.equals(password2)) {
            String sql = "insert into USER (NAME,PASSWORD) values (?,?)";
            update(sql, name, password1);
            return true;
        }
        else return false;
    }

    public boolean replacepassword(String name, String password1, String password2, String password3) {
        if (password2.equals(password3)) {
            String sql = "update USER set password=? where name=?";
            update(sql, password2, name);
            return true;
        }
        else return false;
    }

    public boolean edit(String username, String qq, String address, String mail, String tel, String introduce, String gender) {
        String sql = "update USER set qq=?,address=?,mail=?,tel=?,introduce=?,gender=? where name=?";
        System.out.println(username + qq + address + mail + tel + introduce + gender);
        update(sql, qq, address, mail, tel, introduce, gender, username);
        return true;
    }

    public UserEntity getOne(String name) {
        String sql = "select * from USER where name=?";
        UserEntity user1 = get(sql, name);
        return user1;
    }
    public UserEntity getOne1(int id) {
        String sql = "select * from USER where ID_USER=?";
        UserEntity user1 = get(sql, id);
        return user1;
    }

    public List<UserEntity> getAll() {
        String sql = "select * from USER ";
        List<UserEntity> user1 = getForList(sql);
        return user1;
    }

    public int Mycollectcount(int id_user){
        String sql="SELECT COUNT(*) from LIB_COLLECT WHERE ID_USER=? ";
        int count=Integer.valueOf(getForValue(sql,id_user).toString());
        return count;
    }

    public int orgManager(int id){
        String sql="select count(*) from ORGANIZATION where ID_USER=?";
        int count = Integer.valueOf(getForValue(sql,id).toString());
        return count;
    }

    @Override
    public int projectNumberNow(int id) {
        String sql="select count(*) from VIEW_projectMember where ID_USER=? and STATE=1";
        int count = Integer.valueOf(getForValue(sql,id).toString());
        return count;
    }

    @Override
    public int projectNumberHistory(int id) {
        String sql="select count(*) from VIEW_projectMember where ID_USER=? and STATE=0";
        int count = Integer.valueOf(getForValue(sql,id).toString());
        return count;
    }

    @Override
    public List<UserEntity> getOrgAllMem(int user_id,String name){
        String sql1 = "select ID_ORGANIZATION from ORGANIZATION where NAME=?";
        int id_org=getForValue(sql1,name);
        System.out.println(id_org);
        String sql2 = "select ID_USER,NAME,MAIL,TEL from USER where ID_USER=any(select ID_USER from ORG_MEMBER where ID_ORGANIZATION=? and ID_USER!=?)";
        List<UserEntity> list=getForList(sql2,id_org,user_id);
        return list;
    }
}
