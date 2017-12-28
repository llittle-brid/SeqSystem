package daoImp;

import dao.DAO;
import dao.LibrarydiscussDao;
import entity.LibrarydiscussEntity;
import java.util.List;
import java.util.Date;

public class LibrarydiscussDaoImp extends DAO<LibrarydiscussEntity> implements LibrarydiscussDao{

   public int getAllcount(int id_library)
   {
       String sql="select count(*) from LIB_DISCUSS where id_library=?";
       int count=Integer.valueOf(getForValue(sql,id_library).toString());
       return count;
   }
   public List<LibrarydiscussEntity> getAll(int id_library)
    {
        String sql="select * from LIB_DISCUSS where id_library=?";
        List<LibrarydiscussEntity> librarydiscuss1=getForList(sql,id_library);
        return librarydiscuss1;
    }
   public void insert(int id_user, Date time,String content, int id_library)
    {
        String sql="insert into LIB_DISCUSS(ID_USER,TIME,CONTENT) values(?,?,?) where id_library=?";
        update(sql,id_user,time,content,id_library);
    }
}
