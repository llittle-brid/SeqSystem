package daoImp;
import dao.DAO;
import dao.LibrarycollectDao;
import entity.LibrarycollectEntity;
import java.util.List;

public class LibrarycollectDaoImp extends DAO<LibrarycollectEntity> implements LibrarycollectDao{

    public boolean collect(int id_user,int id_library)
    {
        String sql="insert into LIB_COLLECT (id_user,id_library) values(?,?)";
        update(sql,id_user,id_library);
        if(id_library!=0)
        { return true;}
        else
            return false;
    }

    public LibrarycollectEntity getOne(String name)
    {
        String sql="select * from USER where name=?";
        LibrarycollectEntity librarycollect1=get(sql,name);
        return librarycollect1;
    }

    public List<LibrarycollectEntity> getAll(int id_user)
    {
        String sql="select * from LIB_COLLECT where ID_USER=? ";
        List<LibrarycollectEntity> librarycollect1=getForList(sql,id_user);
        return librarycollect1;
    }

    public List<LibrarycollectEntity> getMycollect(int id_user,int num1,int num2)
    {
        String sql="select * from LIBRARY where (LIB_COLLECT.ID_LIBRARY=LIBRARY.ID_LIBRARY and LIB_COLLECT.ID_USER=?)limit ?,?";
        List<LibrarycollectEntity> librarycollect1=getForList(sql,id_user,num1,num2);
        return librarycollect1;
    }
    public int getAllcount(int id_user)
    {
        String sql="select count(*) from LIB_COLLECT where ID_USER=?";
        int count=Integer.valueOf(getForValue(sql,id_user).toString());
        return count;
    }
}
