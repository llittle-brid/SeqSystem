package daoImp;
import dao.DAO;
import dao.StructureDao;
import entity.StructureEntity;
import java.util.List;

public class StructureDaoImp extends DAO<StructureEntity> implements StructureDao{
    public List<StructureEntity> getAll(int id_library,int num1,int num2)
    {
        String sql="select CONTENT from STRUCTURE where ID_LIBRARY=? limit ?,?";
        List<StructureEntity> structure1=getForList(sql,id_library,num1,num2);
        return structure1;
    }

    public int count(int id_library){
        String sql="select count(*) from STRUCTURE where ID_LIBRARY=?";
        int count=Integer.valueOf(getForValue(sql,id_library).toString());
        return count;
    }

    @Override
    public List<StructureEntity> getAll(int id_library) {
        String sql="select * from STRUCTURE where ID_LIBRARY=?";
        return getForList(sql,id_library);
    }
}
