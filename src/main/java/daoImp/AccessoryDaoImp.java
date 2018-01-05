package daoImp;

import dao.AccessoryDao;
import dao.DAO;
import entity.AccessoryEntity;

import java.util.List;

public class AccessoryDaoImp extends DAO<AccessoryEntity> implements AccessoryDao {
    @Override
    public List<AccessoryEntity> getAll(int id_pro_discuss) {
        String sql = "select * from ACCESSORY where id_pro_discuss = ?";
        return getForList(sql,id_pro_discuss);
    }
}
