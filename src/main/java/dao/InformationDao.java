package dao;

import entity.InformationEntity;
import entity.PersonalCenterEntity;

import java.util.List;

public interface InformationDao {
    List<InformationEntity> getAll(int ID);
    void acceptOrg(Integer ID_ORGANIZATION, int ID_USER);
    void acceptPro(Integer ID_PROJECT, int ID_USER);
    void refuseOrg(Integer ID_ORGANIZATION, int ID_USER);
    void refusePro(Integer ID_PROJECT, int ID_USER);
    void joinPro(Integer ID_PROJECT, int ID_USER);
    void joinOrg(Integer ID_ORGANIZATION, int ID_USER);
}
