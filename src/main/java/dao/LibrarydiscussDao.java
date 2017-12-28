package dao;
import java.util.Date;
import java.util.List;
import entity.LibrarydiscussEntity;

public interface LibrarydiscussDao {
    int getAllcount(int id_library);
    List<LibrarydiscussEntity> getAll(int id_library);
    void insert(int id_user, Date time,String content, int id_library);
}