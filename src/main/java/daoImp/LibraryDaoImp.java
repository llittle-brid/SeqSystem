package daoImp;

import dao.DAO;
import dao.LibraryDao;
import entity.LibraryEntity;
import java.util.List;

public class LibraryDaoImp extends DAO<LibraryEntity> implements LibraryDao{

    public LibraryEntity getOne(String name)
    {
        String sql="select * from USER where name=?";
        LibraryEntity library1=get(sql,name);
        return library1;
    }

    public List<LibraryEntity> getAll()
    {
        String sql="select * from user ";
        List<LibraryEntity> user1=getForList(sql);
        return user1;
    }
}
