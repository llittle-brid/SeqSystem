package dao;
import java.util.List;
import entity.StructureEntity;
public interface StructureDao {
    List<StructureEntity> getAll(int id_library);
    void insert(String toJson);
}
