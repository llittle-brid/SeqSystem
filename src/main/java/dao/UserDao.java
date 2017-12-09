package dao;

import java.util.List;

import entity.UserEntity;

public interface UserDao {
	boolean login(String name,String password);

	UserEntity getOne(String name);

    List<UserEntity> getAll();
}
