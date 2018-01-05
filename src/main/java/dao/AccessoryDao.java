package dao;

import entity.AccessoryEntity;

import java.util.List;

public interface AccessoryDao {

    List<AccessoryEntity> getAll(int id_pro_discuss);
}
