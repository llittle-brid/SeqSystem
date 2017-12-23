package dao;
import java.util.List;
import entity.LibraryEntity;

public interface LibraryDao {
    LibraryEntity getOne(String name);

    List<LibraryEntity> getAll(int num1,int num2);

    List<LibraryEntity> getCommon(int num1,int num2);

    List<LibraryEntity> getUser(int num1,int num2);

    List<LibraryEntity> getCase(int num1,int num2);

    List<LibraryEntity> getPicture(int num1,int num2);

    List<LibraryEntity> getMycollect(int id_user,int num1,int num2);
    int getMycollectcount(int id_user);

    int getAllcount();
    int getUsercount();
    int getCasecount();
    int getPicturecount();
    int getCommoncount();
}
