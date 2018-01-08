package dao;
import java.util.List;
import entity.LibraryEntity;

public interface LibraryDao {
    LibraryEntity getOne(int id_library);

    List<LibraryEntity> getAll(int id_user,int num1,int num2);

    List<LibraryEntity> getCommon(int id_user,int num1,int num2);

    List<LibraryEntity> getUser(int id_user,int num1,int num2);

    List<LibraryEntity> getCase(int id_user,int num1,int num2);

    List<LibraryEntity> getPicture(int id_user,int num1,int num2);

    List<LibraryEntity> getMycollect(int id_user,int num1,int num2);
    int getMycollectcount(int id_user);

    int getAllcount();
    int getUsercount();
    int getCasecount();
    int getPicturecount();
    int getCommoncount();

    List<LibraryEntity> getTypeOfLib(int id_user,int id_type);
}
