package dao;

import java.util.List;

import entity.UserEntity;

public interface UserDao {
	boolean login(String name,String password);

	boolean registration(String name,String password1,String password2);

	boolean replacepassword(String name,String password1,String password2,String password3);

	UserEntity getOne(String name);

    List<UserEntity> getAll();
}
