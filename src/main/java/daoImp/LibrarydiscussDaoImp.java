package daoImp;

import dao.DAO;
import dao.LibrarydiscussDao;
import entity.LibrarydiscussEntity;
import java.util.List;
import java.util.Date;

public class LibrarydiscussDaoImp extends DAO<LibrarydiscussEntity> implements LibrarydiscussDao{

   public int getcount(int id_library)
   {
       String sql="select count(*) from LIB_DISCUSS where ID_LIBRARY=?";
       int count=Integer.valueOf(getForValue(sql,id_library).toString());
       return count;
   }
   public List<LibrarydiscussEntity> getAll(int id_library)
    {
        String sql="select * from LIB_DISCUSS where ID_LIBRARY=?";
        List<LibrarydiscussEntity> librarydiscuss1=getForList(sql,id_library);
        return librarydiscuss1;
    }
   public boolean insert(int id_user, int id_library, Date time,String content)
    {

        if(content!=null) {
            String sql="insert into LIB_DISCUSS (ID_USER,ID_LIBRARY,TIME,CONTENT) values(?,?,?,?)";
            update(sql, id_user, id_library, time, content);
            return true;
        }
        else
            return false;
    }
}
