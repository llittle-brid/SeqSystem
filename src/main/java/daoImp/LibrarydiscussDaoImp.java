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
   public List<LibrarydiscussEntity> getAll(int id_library,int num1,int num2)
    {
        String sql="SELECT LIB_DISCUSS.ID_LIB_DISCUSS,LIB_DISCUSS.TIME,LIB_DISCUSS.CONTENT,`USER`.`NAME`,LIB_DISCUSS.ID_LIBRARY,LIB_DISCUSS.ID_USER FROM`USER`RIGHT JOIN LIB_DISCUSS ON LIB_DISCUSS.ID_USER = `USER`.ID_USER WHERE LIB_DISCUSS.ID_LIBRARY=?  ORDER BY LIB_DISCUSS.ID_LIB_DISCUSS DESC limit ?,?";
        List<LibrarydiscussEntity> librarydiscuss1=getForList(sql,id_library,num1,num2);
        return librarydiscuss1;
    }
   public boolean insert(int id_user, int id_library, Date time,String content)
    {

        if(!content.trim().equals("")) {
            String sql="insert into LIB_DISCUSS (ID_USER,ID_LIBRARY,TIME,CONTENT) values(?,?,?,?)";
            update(sql, id_user, id_library, time, content);
            return true;
        }
        else
            return false;
    }
    public boolean delete(int id_lib_discuss)
    {
        if(id_lib_discuss!=0)
        {
            String sql="delete from LIB_DISCUSS where id_lib_discuss=?";
            update(sql, id_lib_discuss);
            return true;
        }
        else
            return  false;
    }
}
