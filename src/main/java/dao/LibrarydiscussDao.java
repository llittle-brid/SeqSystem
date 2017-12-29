package dao;
import java.util.Date;
import java.util.List;
import entity.LibrarydiscussEntity;

public interface LibrarydiscussDao {
    int getcount(int id_library);
    List<LibrarydiscussEntity> getAll(int id_library,int num1,int num2);
    boolean insert(int id_user, int id_library,Date time,String content);
    boolean delete(int id_lib_discuss);
}