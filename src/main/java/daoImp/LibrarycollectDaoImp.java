package daoImp;
import dao.DAO;
import dao.LibrarycollectDao;
import entity.LibrarycollectEntity;
import java.util.List;

public class LibrarycollectDaoImp extends DAO<LibrarycollectEntity> implements LibrarycollectDao{
    public LibrarycollectEntity getOne(String name)
    {
        String sql="select * from USER where name=?";
        LibrarycollectEntity librarycollect1=get(sql,name);
        return librarycollect1;
    }

    public List<LibrarycollectEntity> getAll()
    {
        String sql="select * from LIBRARY ";
        List<LibrarycollectEntity> librarycollect1=getForList(sql);
        return librarycollect1;
    }
}
