package dao;

import entity.PersonalCenterEntity;

import java.util.List;

public interface PersonalCenterDao {
    List<PersonalCenterEntity> getAll(String NAME);
}

