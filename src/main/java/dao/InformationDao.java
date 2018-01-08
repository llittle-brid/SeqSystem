package dao;

import entity.InformationEntity;
import entity.PersonalCenterEntity;

import java.util.List;

public interface InformationDao {
    List<InformationEntity> getAll(int ID);
    boolean acceptOrg(Integer ID_ORGANIZATION, int ID_USER);
    boolean acceptPro(Integer ID_PROJECT, int ID_USER);
    boolean refuseOrg(Integer ID_ORGANIZATION, int ID_USER);
    boolean refusePro(Integer ID_PROJECT, int ID_USER);
    void joinPro(Integer ID_PROJECT, int ID_USER);
    void joinOrg(Integer ID_ORGANIZATION, int ID_USER);
    void toMember(int id_project, int id_user, String content);

}
