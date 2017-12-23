package dao;
import java.util.List;
import entity.LibrarycollectEntity;

public interface LibrarycollectDao {
    boolean collect(int id_user,int id_library);
    LibrarycollectEntity getOne(String name);
    List<LibrarycollectEntity> getAll(int id_user);
    List<LibrarycollectEntity> getMycollect(int id_user,int num1,int num2);

    int getAllcount(int id_user);
}
