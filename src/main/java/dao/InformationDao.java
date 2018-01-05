package dao;

import entity.InformationEntity;
import entity.PersonalCenterEntity;

import java.util.List;

public interface InformationDao {
    List<InformationEntity> getAll(int ID);
    void accept(Integer ID_ORGANIZATION, Integer ID_PROJECT, int ID_USER);
    void refuse(Integer ID_ORGANIZATION, Integer ID_PROJECT, int ID_USER);
}
