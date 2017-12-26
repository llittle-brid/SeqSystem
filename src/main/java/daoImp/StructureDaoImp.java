package daoImp;
import dao.DAO;
import dao.StructureDao;
import entity.StructureEntity;
import java.util.List;

public class StructureDaoImp extends DAO<StructureEntity> implements StructureDao{
    public List<StructureEntity> getAll(int id_library)
    {
        String sql="select CONTENT from STRUCTURE where ID_LIBRARY=?";
        List<StructureEntity> structure1=getForList(sql,id_library);
        return structure1;
    }

    public void insert(String toJson)
    {
        String sql="insert into STRUCTURE (CONTENT) values (?)";
        update(sql,toJson);
    }
}
