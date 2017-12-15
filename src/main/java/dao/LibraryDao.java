package dao;
import java.util.List;
import entity.LibraryEntity;

public interface LibraryDao {
    LibraryEntity getOne(String name);

    List<LibraryEntity> getAll();
}
