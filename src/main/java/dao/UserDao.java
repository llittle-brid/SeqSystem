package dao;

import java.util.List;

import entity.UserEntity;
import entity.postmailEntity;

public interface UserDao {
	boolean login(String name,String password);

	boolean registration(String name,String password1,String password2, String mail);
	boolean postmail(postmailEntity info, String title);
	boolean replacepassword(String name,String password2,String password3);

	boolean edit(String username,String qq,String address,String tel,String introduce,String gender);

	UserEntity getOne(String name);

    List<UserEntity> getAll();
	int Mycollectcount(int id_user);

    int orgManager(int id);
	int sysManager(int id);
    int projectNumberNow(int id);
	int projectNumberHistory(int id);
	int nowNews(int id);
	List<UserEntity> getOrgAllMem(int user_id,String name);
	boolean nameAndMail(String name, String email);
	//找名字
	String FindName(int id_user);
}
