package dao;
import java.util.List;
import entity.LibrarycollectEntity;

public interface LibrarycollectDao {
    LibrarycollectEntity getOne(String name);
    List<LibrarycollectEntity> getAll();
}
