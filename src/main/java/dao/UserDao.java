package dao;

import java.util.List;

import entity.UserEntity;

public interface UserDao {
	boolean login(String name,String password);

	boolean registration(String name,String password1,String password2);

	boolean replacepassword(String name,String password1,String password2,String password3);

	boolean edit(String username,String qq,String address,String mail,String tel,String introduce,String gender);

	UserEntity getOne(String name);

    List<UserEntity> getAll();
	int Mycollectcount(int id_user);

    int orgManager(int id);
}
