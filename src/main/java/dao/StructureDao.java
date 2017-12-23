package dao;
import java.util.List;
import entity.StructureEntity;
public interface StructureDao {
    StructureEntity getOne(String name);
    List<StructureEntity> getAll(int id_library);
}
