package dao;
import java.util.List;
import entity.StructureEntity;
public interface StructureDao {
    List<StructureEntity> getAll(int id_library,int num1,int num2);
    void insert(String toJson);
    int count(int id_library);
}
