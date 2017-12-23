package dao;
import java.util.List;
import entity.LibrarycollectEntity;

public interface LibrarycollectDao {
    boolean collect(int id_user,int id_library);
    boolean nocollect(int id_user,int id_library);
    LibrarycollectEntity getOne(String name);
    List<LibrarycollectEntity> getAll(int id_user);
}
