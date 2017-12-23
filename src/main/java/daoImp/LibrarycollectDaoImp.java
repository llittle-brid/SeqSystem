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
}
