package dao;

import java.util.List;

import entity.UserEntity;
import entity.postmailEntity;

public interface UserDao {
	boolean login(String name,String password);

	boolean registration(String name,String password1,String password2, String mail);

	boolean replacepassword(String name,String password1,String password2,String password3);

	boolean edit(String username,String qq,String address,String mail,String tel,String introduce,String gender);

	boolean postmail(postmailEntity info, String title);

	UserEntity getOne(String name);

    List<UserEntity> getAll();

    int orgManager(int id);
}
