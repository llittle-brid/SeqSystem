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
    public List<LibraryEntity> getAll(int num1,int num2)
    {
        String sql="select * from LIBRARY limit ?,? ";
        List<LibraryEntity> library1=getForList(sql,num1,num2);
        return library1;
    }
}
